package com.project.apprentice.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;  

import org.springframework.web.servlet.ModelAndView;

import com.project.apprentice.form.Enrollment;
import com.project.apprentice.model.CallInSick;
import com.project.apprentice.model.Class;
import com.project.apprentice.model.Day;
import com.project.apprentice.model.Prospectus;
import com.project.apprentice.model.Semester;
import com.project.apprentice.model.Student;
import com.project.apprentice.model.StudentClass;
import com.project.apprentice.model.Subject;
import com.project.apprentice.model.TimeSchedule;
import com.project.apprentice.model.YearLevel;
import com.project.apprentice.service.StudentService;

@Controller
public class StudentController {
	
	@Resource
	private StudentService studentService;
	
	Enrollment enrollInfo = new Enrollment();
	
	public int getStudentId(HttpServletRequest request){
		int student_id = (Integer) request.getSession().getAttribute("student_id");	
		return student_id;
	}
		
	@RequestMapping(value="/studentDashboard")
	public ModelAndView studentDashboard(HttpServletRequest request, @ModelAttribute Student student) {
		ModelAndView modelAndView = new ModelAndView("student/dashboard");	
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		modelAndView.addObject("student", student);
		return modelAndView;
	}
	
	@RequestMapping(value="/studentSignout")
	public String userLogout(HttpServletRequest request){
		request.getSession().removeAttribute("student_id");
		request.getSession().invalidate();
		return "redirect:/";
	}
		
	@RequestMapping(value="/prospectus")
	public ModelAndView prospectus(HttpServletRequest request, @ModelAttribute Student student) {
		ModelAndView modelAndView = new ModelAndView("student/prospectus");	
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		modelAndView.addObject("student", student);
		return modelAndView;
	}
	
	@RequestMapping(value="/enrollment")
	public ModelAndView enrollment(HttpServletRequest request, @ModelAttribute Student student) {
		ModelAndView modelAndView = new ModelAndView("student/enrollment");	
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		modelAndView.addObject("student", student);
		return modelAndView;		
	}
	
	@RequestMapping(value="/studyLoad")
	public ModelAndView studyLoad(HttpServletRequest request, @ModelAttribute Student student) {
		ModelAndView modelAndView = new ModelAndView("student/study_load");	
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		modelAndView.addObject("student", student);
		return modelAndView;
	}
	
	@RequestMapping(value="/assessment")
	public ModelAndView assesment(HttpServletRequest request) {
		return new ModelAndView("student/assessment");
	}
	
	@RequestMapping(value="/enrollmentPlotLoad")
	public ModelAndView enrollmentPlotLoad() {
		ModelAndView modelAndView = new ModelAndView("student/enrollment_plot_sched");	
		List<Day> dayList = studentService.findallDays();
		List<TimeSchedule> listTimeSched = studentService.findallTimeSchedule();
		modelAndView.addObject("days", dayList);
		modelAndView.addObject("timeSched", listTimeSched);
		return modelAndView;
	}
	
	@RequestMapping(value="/enrollmentProspectus")
	public ModelAndView enrollmentProspectus(HttpServletRequest request, @ModelAttribute Student student, @ModelAttribute Prospectus prospectus) {
		ModelAndView modelAndView = new ModelAndView("student/enrollment_prospectus");	
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		prospectus.setProspectusId(student.getProspectus().getProspectusId());      
		List<Subject> subjectsList = studentService.findSubjectbyProspectusId(prospectus);
		List<YearLevel> yearLevels = studentService.findAllYearLevels();
		List<Semester> semesters = studentService.findAllSemester();
		modelAndView.addObject("subjects", subjectsList);
		modelAndView.addObject("semesters", semesters);
		modelAndView.addObject("yearLevel", yearLevels);		
		return modelAndView;
	}
	
	@RequestMapping(value="/enrolClassSched/{subjId}")
	public ModelAndView enrolClassSched(@PathVariable int subjId, @ModelAttribute Subject subject) {
		ModelAndView modelAndView = new ModelAndView("student/enrollment_subject_class");
		List<Class> clazz = studentService.findAllClassbySubjects(subjId);	
		List<Object[]> classNumEnrollees= studentService.findClassNumEnrollees(subjId);						
		modelAndView.addObject("clazz", clazz);
		modelAndView.addObject("classNumEnrollee", classNumEnrollees);
		return modelAndView;
	}
		
	@RequestMapping(value="/classEnrollment/{classId}", headers = "Accept=application/json")
	@ResponseBody
	public String classEnrollment(HttpServletRequest request, @PathVariable int classId){		
		JSONObject json = new JSONObject(); 
		json.put("Result", "OK");
		
		if(enrollInfo.getClazz().size() > 5){
	        json.put("MaxSubjects", "Reached Maximum Subjects");
		}else{
			int student_id = (Integer) request.getSession().getAttribute("student_id");	
			enrollInfo.setStudent_id(student_id);
			List<Class> clazz = studentService.getClassInfo(classId);			
			
			if(enrollInfo.conflictTime(clazz.get(0).getSchedule().getScheduleId())){
				json.put("ConflictTime", "Conflict Time Schedule");
				json.put("SubjectName", enrollInfo.getClassName(classId));
		        System.out.println("JSON: " + json.toString(2));
			}else if(enrollInfo.conflictDay(clazz.get(0).getDay().getDayId())){
				json.put("ConflictDay", "Conflict Day Schedule");
				json.put("SubjectName", enrollInfo.getClassName(classId));
			}else if(enrollInfo.isSubjectEnrolled(clazz.get(0).getSubject().getSubjId())){
				json.put("SubjectAlreadyEnrolled", "Subject has already been enrolled");
				json.put("SubjectName", enrollInfo.getClassName(classId));
			}else{	
				enrollInfo.addClassInformation(clazz);
				String dayName;
				String[] dayTemp;
				String schedFlag;
		        
		       	for(int i=0; i<enrollInfo.getClazz().size(); i++){
		        	JSONObject subjectObj = new JSONObject();
		        	subjectObj.put("subjName", enrollInfo.getClazz().get(i).getSubject().getSubjName());
		        	subjectObj.put("classId", enrollInfo.getClazz().get(i).getClassId());	
		        	subjectObj.put("roomName", enrollInfo.getClazz().get(i).getRoom().getRoomName());	
		        	subjectObj.put("start_time", enrollInfo.getClazz().get(i).getSchedule().getScheduleStartTime());
		        	subjectObj.put("end_time", enrollInfo.getClazz().get(i).getSchedule().getScheduleEndTime());
		        	subjectObj.put("sched_name", enrollInfo.getClazz().get(i).getSchedule().getScheduleName());
		        	subjectObj.put("sched_day", enrollInfo.getClazz().get(i).getDay().getDayName());
		        	JSONObject schedObj = new JSONObject();
		        	if(enrollInfo.getClazz().get(i).getDay().getDayId() >= 7 ){
		        		dayName = enrollInfo.getClazz().get(i).getDay().getDayName();
			        	dayTemp = dayName.split("-");	
			        	for(int loop=0; loop<dayTemp.length ; loop++){
			        		schedFlag =  plotSched(dayTemp[loop], enrollInfo.getClazz().get(i).getSchedule().getScheduleName() );
			        		schedObj.put("plotSchedDiv_" + loop, schedFlag);
			        	}
		        	}else{
		        		schedFlag =  plotSched(enrollInfo.getClazz().get(i).getDay().getDayName(), enrollInfo.getClazz().get(i).getSchedule().getScheduleName() );
		        		schedObj.put("plotSchedDiv_0" , schedFlag );
		        	}
		        	subjectObj.accumulate("SchedPlot", schedObj);
		        	json.accumulate("Records", subjectObj);
		       	}	
			}
		}
		
		String jsonString = json.toString();
		return jsonString;
			
	}
	
	public String plotSched(String sched_day, String sched_name){
		String schedtemp;
		
		if(sched_day.equals("M"))
			schedtemp = sched_name + "_1";
		else if(sched_day.equals("T"))
			schedtemp = sched_name + "_2";
		else if(sched_day.equals("W"))
			schedtemp = sched_name + "_3";
		else if(sched_day.equals("Th"))
			schedtemp = sched_name + "_4";
		else if(sched_day.equals("F"))
			schedtemp = sched_name + "_5";
		else if(sched_day.equals("S"))
			schedtemp = sched_name + "_6";
		else
			schedtemp = null;
		
		return schedtemp;
	}
	
	@RequestMapping(value="/plotClass/{classId}")
	public ModelAndView plotClass(@PathVariable int classId) {
		ModelAndView modelAndView = new ModelAndView("student/enrollment_plot_class");	
		List<Class> clazz = studentService.getClassInfo(classId);
		modelAndView.addObject("clazz", clazz);
		return modelAndView;
	}
	
	@RequestMapping(value="/unEnrollClass/{classId}")
	@ResponseBody
	public String unEnrollClass(@PathVariable int classId){
		enrollInfo.unEnrollClass(classId);
		return null;
	}
	
	@RequestMapping(value="/saveEnrollment")
	@ResponseBody
	public String saveEnrollment(@ModelAttribute StudentClass sc, HttpServletRequest request, 
								 @ModelAttribute Student student, @ModelAttribute Class clazz) throws ParseException {
		
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		
		DateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd");
		Date date = new Date ();
		String dateStr = dateFormat.format(date);
		Date dateEnroll = dateFormat.parse(dateStr); 
		
		for(int i=1; i<enrollInfo.getClazz().size(); i++){
			clazz = studentService.getClassData(enrollInfo.getClazz().get(i).getClassId());
			sc.setClazz(clazz);			
			sc.setStudent(student);
			sc.setDateOfEnrollment(dateEnroll);	
			studentService.addStudentEnrollment(sc);
		}
		
		enrollInfo.clearContents();
		return null;
	}
	
	@RequestMapping(value="/studyLoadSchedule")
	public ModelAndView studyLoadSchedule(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView("student/study_load_sched");	
		int student_id = (Integer) request.getSession().getAttribute("student_id");	
		List<StudentClass> clazz = studentService.getStudyLoad(student_id);
		modelAndView.addObject("clazz", clazz);
		return modelAndView;
	}
	
	@RequestMapping(value="/callInLoadModal/{classId}")
	public ModelAndView callInLoadModal( HttpServletRequest request, @PathVariable int classId) {
		ModelAndView modelAndView = new ModelAndView("student/study_load_call_in");
		int student_id = (Integer) request.getSession().getAttribute("student_id");	
		List<CallInSick> callInLogs = studentService.classCallIns(student_id, classId);
		List<Object[]> studentClassCallInCount = studentService.getStudentClassCallInCount(student_id, classId);		
		modelAndView.addObject("classId", classId);
		modelAndView.addObject("callInLogs", callInLogs);
		modelAndView.addObject("logCount", studentClassCallInCount);
		return modelAndView;
	}
	
	@RequestMapping(value="/callInLogs/{classId}")
	public ModelAndView callInLogs( HttpServletRequest request, @PathVariable int classId) {
		ModelAndView modelAndView = new ModelAndView("student/study_load_call_in_logs");
		int student_id = (Integer) request.getSession().getAttribute("student_id");	
		List<CallInSick> callInLogs = studentService.classCallIns(student_id, classId);
		//List<Object[]> studentClassCallInCount = studentService.getStudentClassCallInCount(student_id, classId);		
		//modelAndView.addObject("classId", classId);
		modelAndView.addObject("callInLogs", callInLogs);
		//modelAndView.addObject("logCount", studentClassCallInCount);
		return modelAndView;
	}
	
	@RequestMapping(value="/newCallIn", method=RequestMethod.POST)
	@ResponseBody
	public void newCallIn(@RequestParam(value = "reason") String reason, 
						  @RequestParam(value = "numDays") int numDays, 
						  @RequestParam(value = "classId") int classId, 
						  @ModelAttribute CallInSick callIn,
						  HttpServletRequest request, @ModelAttribute Student student,
						  @ModelAttribute Class clazz) throws ParseException {
		
		DateFormat dateFormat = new SimpleDateFormat ("yyyy-MM-dd");
		Date date = new Date ();
		String dateStr = dateFormat.format(date);
		Date callInDate = dateFormat.parse(dateStr); 
		callIn.setCallInDate(callInDate);
		
		int student_id = (Integer) request.getSession().getAttribute("student_id");		
		student = studentService.getStudentInfo(student_id);
		callIn.setStudent(student);
		
		callIn.setNumDaysAbsent(numDays);
		callIn.setReason(reason);
		
		clazz = studentService.getClassData(classId);
		callIn.setClazz(clazz);	
		
		studentService.addCallIn(callIn);
	}
	
	
	
	
	
	
	
	
}
