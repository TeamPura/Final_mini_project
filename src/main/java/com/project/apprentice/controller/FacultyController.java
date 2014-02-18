package com.project.apprentice.controller;

import java.util.ArrayList;
import java.util.List;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.project.apprentice.model.Class;
import com.project.apprentice.model.Faculty;
import com.project.apprentice.model.Room;
import com.project.apprentice.model.Schedule;
import com.project.apprentice.model.SchoolYear;
import com.project.apprentice.model.Semester;
import com.project.apprentice.model.StudentClass;
import com.project.apprentice.model.Subject;
import com.project.apprentice.service.FacultyService;
import com.project.apprentice.model.Day;



/**
 * Handles requests for the application home page.
 */
@Controller
public class FacultyController {
	
	@Resource
	private HomeController homeController;
	
	@Resource
	private FacultyService facultyService;
	
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws ParseException 
	 */
	
	public Faculty getFaculty(HttpServletRequest request){
		Faculty faculty =  (Faculty) request.getSession().getAttribute("loginFaculty");	
		return faculty;
	}
	
	
	
	@RequestMapping(value = "/faculty", method = RequestMethod.GET)
	public String index(HttpServletRequest request, Model model) throws ParseException{	
		
		Faculty faculty =  (Faculty) request.getSession().getAttribute("loginFaculty");
		
		Date date = new Date();
		String lasmod = new SimpleDateFormat("yyyy-MM-dd").format(date);
		date = new SimpleDateFormat("yyyy-MM-dd").parse(lasmod);
		
		/*For view class*/
				
		List<Day> dayList = facultyService.getDay();
		List<Schedule> scheduleList = facultyService.getSchedule();
		List<SchoolYear> schoolYearList = facultyService.getSchoolYear();
		List<Semester> semesterList = facultyService.getSemester();
		List<Subject> subjectList = facultyService.getSubjects();
		List<Room> roomList = facultyService.getRoom();
	
		List<Class> classList = facultyService.viewAll(faculty);
		
		List<Integer> allEnrolled = new ArrayList<Integer>();
		
		for(int j=0; j<classList.size();j++){
			
			List<StudentClass> allStudentsEnrolled = facultyService.studentsEnrolled(classList.get(j));
					
			allEnrolled.add(allStudentsEnrolled.size());
		
			model.addAttribute("allEnrolled",allEnrolled);
			
		}
		
		
		
		/* For add class */
		
		model.addAttribute("faculty",faculty);
		model.addAttribute("classList", classList);
		model.addAttribute("schoolYearList", schoolYearList);
		model.addAttribute("dayList",dayList);
		model.addAttribute("semesterList", semesterList);
		model.addAttribute("scheduleList",scheduleList);
		model.addAttribute("subjectList",subjectList);	
		model.addAttribute("roomList",roomList);	
		model.addAttribute("schoolYearList",schoolYearList);
		
		
		
		/* For edit class*/		

		List<Integer> Enrolled = new ArrayList<Integer>();
		List<Class> classDue = facultyService.getClassDue(date, date, faculty,"New");
		 
		for(int i=0; i<classDue.size();i++){
					
			List<StudentClass> studentsEnrolled = facultyService.studentsEnrolled(classDue.get(i));
				
			Enrolled.add(studentsEnrolled.size());
		
			model.addAttribute("Enrolled",Enrolled);
			model.addAttribute("studentsEnrolled",studentsEnrolled);
			model.addAttribute("classDue",classDue);
			
						
		}
					
		return "faculty/index";
	}
	
	
	
		@InitBinder("classs")
		protected void initBinder(HttpServletRequest request, ServletRequestDataBinder binder) 
		{   	
			SimpleDateFormat dateFormat = new SimpleDateFormat();
			dateFormat.setLenient(false);       
			
			dateFormat.applyPattern("yyyy-MM-dd");  
			
			binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
			binder.registerCustomEditor(String.class, new StringTrimmerEditor(false));
		}	
	
	
	
	@RequestMapping(value = "/addClassPost", method = RequestMethod.POST)
	public String addClassPost(HttpServletRequest request, @ModelAttribute Class classs){
		
		Faculty faculty =  (Faculty) request.getSession().getAttribute("loginFaculty");
				
		classs.setFaculty(faculty);			
		classs.setStatus("New");
		facultyService.addNewClass(classs);
								
		return "redirect:/faculty";
	}
	
		
	
	  @RequestMapping(value = "/viewStudentsClassPost/{classId}")

      public @ResponseBody ModelAndView viewClassStudentGet(@PathVariable int classId, Model model) {

		 List <StudentClass> studentsEnrolled = new ArrayList<StudentClass>();
			
		 studentsEnrolled = facultyService.studentsEnrolled2(classId);
		
              
         ModelAndView modelAndView = new ModelAndView("faculty/classRoster");
         
         modelAndView.addObject("studentsEnrolled",studentsEnrolled);

         return modelAndView;

      }
	  	   
	  
		@RequestMapping(value = "/updateClassStudents", method = RequestMethod.POST)
		public String viewClassStudentsPost(@ModelAttribute Class updateClass, BindingResult result, String dueEnrollmentDateAttr, String startClassDateAttr) throws ParseException{
			
			CharSequence dash= "-";
			
			DateFormat dfto = new SimpleDateFormat("yyyy-MM-dd"); 
			DateFormat dffrom = new SimpleDateFormat("M/dd/yyyy");
			
			if(dueEnrollmentDateAttr.contains(dash)){

				Date dueEnrollmentDate = dfto.parse(dueEnrollmentDateAttr);
				Date startClassDate = dfto.parse(startClassDateAttr);
				
				 updateClass.setDueEnrollmentDate(dueEnrollmentDate);
				 updateClass.setStartClassDate(startClassDate);
			}
			else{
			
			Date dueEnrollmentDate = dffrom.parse(dueEnrollmentDateAttr);
			Date startClassDate = dffrom.parse(startClassDateAttr);
			
			 updateClass.setDueEnrollmentDate(dueEnrollmentDate);
			 updateClass.setStartClassDate(startClassDate);
			}
			
						
			
			facultyService.updateUser(updateClass, (int)updateClass.getClassId());
							
			
			return "redirect:/faculty";
		}
		
		
		@RequestMapping(value="/facultySignout")
		public String facultyLogout(HttpServletRequest request){
			request.getSession().removeAttribute("loginFaculty");
			request.getSession().invalidate();
			return "redirect:/";
		}


	  
	  
	
}
