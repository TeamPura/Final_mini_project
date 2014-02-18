package com.project.apprentice.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.apprentice.model.College;
import com.project.apprentice.model.Course;
import com.project.apprentice.model.Department;
import com.project.apprentice.model.Faculty;
import com.project.apprentice.model.Prospectus;
import com.project.apprentice.model.SchoolYear;
import com.project.apprentice.model.Semester;
import com.project.apprentice.model.Student;
import com.project.apprentice.model.Subject;
import com.project.apprentice.model.YearLevel;
import com.project.apprentice.service.AdminService;

@Controller
public class AdminController
{
	@Resource
	private AdminService adminservice;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value = "/adminhome", method = RequestMethod.GET)
	public String adminhome(Locale locale, Model model)
	{
		return "admin/adminhome";
	}
	
	@RequestMapping(value = "/viewpage", method = RequestMethod.GET)
	public String viewall(Model model)
	{
		List<Student> studentList = adminservice.DisplayAllStudents();
		List<Faculty> facultyList = adminservice.DisplayAllFaculty();
		model.addAttribute("studentList", studentList);
		model.addAttribute("facultyList", facultyList);
		return "admin/viewpage";
	}
	
	@RequestMapping(value = "/viewstudents", method = RequestMethod.POST)
	public String viewstudents(Model model)
	{
		List<Student> studentList = adminservice.DisplayAllStudents();
		List<Faculty> facultyList = adminservice.DisplayAllFaculty();
		model.addAttribute("studentList", studentList);
		model.addAttribute("facultyList", facultyList);
		return "redirect:/viewpage";
	}
	
	@RequestMapping(value = "/viewfaculty", method = RequestMethod.POST)
	public String viewfaculty(Model model)
	{
		List<Faculty> facultyList = adminservice.DisplayAllFaculty();
		model.addAttribute("facultyList", facultyList);
		return "redirect:/viewfaculty1";
	}
	
	@RequestMapping(value = "/viewfaculty1", method = RequestMethod.GET)
	public String viewfaculty1(Model model)
	{
		List<Faculty> facultyList = adminservice.DisplayAllFaculty();
		model.addAttribute("facultyList", facultyList);
		return "admin/viewfaculty";
	}
	
	@RequestMapping(value = "/createpage", method = RequestMethod.GET)
	public String createpage(Locale locale, Model model)
	{
		List <Department> deptList = adminservice.DisplayAllDepartments();
		List <College> collList = adminservice.DisplayAllColleges();
		List <Course> courseList = adminservice.DisplayAllCourses();
		List <Semester> semesterList = adminservice.DisplayAllSemesters();
		List <Prospectus> prospectusList = adminservice.DisplayAllProspectus();
		List <YearLevel> yearLevelList = adminservice.DisplayAllYearLevels();
		model.addAttribute("deptList", deptList);
		model.addAttribute("collList", collList);
		model.addAttribute("courseList", courseList);
		model.addAttribute("semesterList", semesterList);
		model.addAttribute("prospectusList", prospectusList);
		model.addAttribute("yearLevelList", yearLevelList);
		return "admin/createuser";
	}
	
	@RequestMapping(value = "/studentcreate", method = RequestMethod.POST)
	public String createstudent(String password, String lname, String mname, String fname, String bday, String address, String gender, String emailAddress, String courseId, String semesterId, String prospectusId) throws ParseException 
	{
		byte x = 1;
		int studentcount = 0;
		int courseid = Integer.parseInt(courseId);
		//int yearlevelid = Integer.parseInt(yearLevelId);
		int semesterid = Integer.parseInt(semesterId);
		int prospectusid = Integer.parseInt(prospectusId);
		
		Student student = new Student();
		Course course = new Course();
		YearLevel yearLevel = new YearLevel();
		Semester semester = new Semester();
		Prospectus prospectus = new Prospectus();
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
		Date date1 = date.parse(bday);
		
		course.setCourseId(courseid);
		//yearLevel.setYearLevelId(yearlevelid);
		semester.setSemesterId(semesterid);
		prospectus.setProspectusId(prospectusid);
		
		student.setPassword(password);
		student.setLname(lname);
		student.setMname(mname);
		student.setFname(fname);
		student.setBday(date1);
		student.setAddress(address);
		student.setGender(gender);
		student.setEmailAddress(emailAddress);
		
		studentcount = adminservice.StudentCount();
		studentcount+=20140000;
		student.setUserId(studentcount);
		student.setCourse(course);
		//student.setYearLevel(yearLevel);
		if(semesterid == 1 || semesterid ==2)
		{
			yearLevel.setYearLevelId(1);
			student.setYearLevel(yearLevel);
		}
		
		else if (semesterid == 3 || semesterid == 4)
		{
			yearLevel.setYearLevelId(2);
			student.setYearLevel(yearLevel);
		}
		else if (semesterid == 5 || semesterid == 6)
		{
			yearLevel.setYearLevelId(3);
			student.setYearLevel(yearLevel);
		}
		else if (semesterid == 7 || semesterid == 8)
		{
			yearLevel.setYearLevelId(4);
			student.setYearLevel(yearLevel);
		}
		
		student.setSemester(semester);
		student.setProspectus(prospectus);
		
		student.setStatus(x);
		student.setEmailVerified("false");
		
		adminservice.AddNewStudent(student);

		return "redirect:/createpage";
	}
	
	
	@RequestMapping(value = "/facultycreate", method = RequestMethod.POST)
	public String createfaculty(String password, String lname, String mname, String fname, String bday, String address, String gender, String emailAddress, String deptId) throws ParseException 
	{
		byte x = 1;
		int facultycount = 0;
		int departmentid = Integer.parseInt(deptId);
		
		Faculty faculty = new Faculty();
		
		SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
		Date date1 = date.parse(bday);
		
		Department department = new Department();
		department.setDeptId(departmentid);
		
		facultycount = adminservice.FacultyCount();
		facultycount += 10010;
		faculty.setUserId(facultycount);
		faculty.setPassword(password);
		faculty.setLname(lname);
		faculty.setMname(mname);
		faculty.setFname(fname);
		faculty.setBday(date1);
		faculty.setAddress(address);
		faculty.setGender(gender);
		faculty.setEmailAddress(emailAddress);
		faculty.setDepartment(department);
		faculty.setStatus(x);
		faculty.setEmailVerified("false");
		
		adminservice.AddNewFaculty(faculty);

		return "redirect:/createpage";
	}
	
	@RequestMapping(value = "/collegecreate", method = RequestMethod.POST)
	public String createcollege(College college)
	{
		adminservice.AddNewCollege(college);

		return "redirect:/createpage";
	}
	
	@RequestMapping(value = "/deptcreate", method = RequestMethod.POST)
	public String createdepartment(String deptName, String deptDesc, String collegeId)
	{
		int collegeid = Integer.parseInt(collegeId);
		Department department = new Department();
		College college = new College();
		
		college.setCollegeId(collegeid);
		department.setDeptName(deptName);
		department.setDeptDesc(deptDesc);
		department.setCollege(college);
		
		adminservice.AddNewDepartment(department);

		return "redirect:/createpage";
	}
	
	
	@RequestMapping(value = "/coursecreate", method = RequestMethod.POST)
	public String createcourse(String courseName, String courseDesc, String deptId)
	{
		int departmentid = Integer.parseInt(deptId);
		
		Course course = new Course();
		Department department = new Department();
		department.setDeptId(departmentid);
		
		course.setCourseName(courseName);
		course.setCourseDesc(courseDesc);
		course.setDepartment(department);
		
		adminservice.AddNewCourse(course);

		return "redirect:/createpage";
	}
	
	/*@RequestMapping(value = "/schoolyearcreate", method = RequestMethod.POST)
	public String createschoolyear(String acadName, String acadStartDate, String acadEndDate) throws ParseException
	{
		SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
		Date startdate = date.parse(acadStartDate);
		Date enddate = date.parse(acadEndDate);
		
		SchoolYear schoolyear = new SchoolYear();
		schoolyear.setAcadName(acadName);
		schoolyear.setAcadStartDate(startdate);
		schoolyear.setAcadEndDate(enddate);
		
		adminservice.AddNewSchoolYear(schoolyear);

		return "redirect:/createpage";
	}
	*/
	
	@RequestMapping(value = "/subjectcreate", method = RequestMethod.POST)
	public String createsubject(String subjName, String subjDesc, String units) throws ParseException 
	{
		Subject subject = new Subject ();
		int units1 = Integer.parseInt(units);
		subject.setSubjName(subjName);
		subject.setSubjDesc(subjDesc);
		subject.setUnits(units1);
		
		adminservice.AddNewSubject(subject);
		return "redirect:/createpage";
	}
	
	
	
	@RequestMapping(value = "/deletef/{userId}", method = RequestMethod.POST)
	public String deletefaculty(@ModelAttribute Faculty faculty, @PathVariable int userId)
	{
		adminservice.DeleteFaculty(userId);
		return "redirect:/viewfaculty1";
	}
	 
	 @RequestMapping(value = "/deletes/{userId}", method = RequestMethod.POST)
	 public String deletestudent(@ModelAttribute Student student, @PathVariable int userId)
	 {
		adminservice.DeleteStudent(userId);
		return "redirect:/viewpage";
	 }
	 

	 @RequestMapping(value="/viewf/{userId}", method=RequestMethod.GET)
	 public @ResponseBody ModelAndView viewFacultyPage(Model model, @PathVariable int userId)
	 {    
		 logger.info("userId from viewf "+ userId);
		 List <Department> deptList = adminservice.DisplayAllDepartments();
		 model.addAttribute("deptList", deptList);
		 
		 ModelAndView modelAndView = new ModelAndView("admin/viewf");
		 Faculty faculty = adminservice.ViewFaculty(userId);
		 modelAndView.addObject("faculty", faculty);
		 
		 Department deptd = faculty.getDepartment();
		 int deptdid = deptd.getDeptId();
		 String genderd = faculty.getGender();
		 model.addAttribute("deptdid", deptdid);
		 model.addAttribute("genderd", genderd);
		 return modelAndView;
	 }
	 
	 @RequestMapping(value="viewf/editf/{userId}", method=RequestMethod.POST)
	 public String editFaculty(String password, String lname, String mname, String fname, String bday, String address, String gender, String emailAddress, String deptId, @PathVariable int userId) throws ParseException
	 {
		 Faculty faculty = new Faculty();
		 
		 byte x = 1;
		 int departmentid = Integer.parseInt(deptId);
		 
		 SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
		 Date date1 = date.parse(bday);
		 Department department = new Department();
		 department.setDeptId(departmentid);
		 
		 faculty.setUserId(userId);
		 faculty.setPassword(password);
		 faculty.setLname(lname);
		 faculty.setMname(mname);
		 faculty.setFname(fname);
		 faculty.setBday(date1);
		 faculty.setAddress(address);
		 faculty.setGender(gender);
		 faculty.setEmailAddress(emailAddress);
		 faculty.setDepartment(department);
		 faculty.setStatus(x);
		 faculty.setEmailVerified("false");
		 
		 adminservice.EditFaculty(faculty);
		 
		 return "admin/adminhome";	
     }
	 
	 @RequestMapping(value="/viewst/{userId}", method=RequestMethod.GET)
	 public @ResponseBody ModelAndView viewStudentPage(Model model, @PathVariable int userId)
	 {
		 logger.info("userId from viewf "+ userId);
		 List <Department> deptList = adminservice.DisplayAllDepartments();
		 List <College> collList = adminservice.DisplayAllColleges();
		 List <Course> courseList = adminservice.DisplayAllCourses();
		 List <Semester> semesterList = adminservice.DisplayAllSemesters();
		 List <Prospectus> prospectusList = adminservice.DisplayAllProspectus();
		 List <YearLevel> yearLevelList = adminservice.DisplayAllYearLevels();
		 model.addAttribute("deptList", deptList);
		 model.addAttribute("collList", collList);
		 model.addAttribute("courseList", courseList);
		 model.addAttribute("semesterList", semesterList);
		 model.addAttribute("prospectusList", prospectusList);
		 model.addAttribute("yearLevelList", yearLevelList);
		 
		 Student student = adminservice.ViewStudent(userId);		 
		 ModelAndView modelAndView = new ModelAndView("admin/viewst");
		 modelAndView.addObject("student", student);
		 
		 Course coursed = student.getCourse();
		 YearLevel yearleveld = student.getYearLevel();
		 Semester semesterd = student.getSemester();
		 Prospectus prospectusd = student.getProspectus();
		 int coursedid = coursed.getCourseId();
		 int yearleveldid = yearleveld.getYearLevelId();
		 int semesterdid = semesterd.getSemesterId();
		 int prospectusdid = prospectusd.getProspectusId();
		 String genderd = student.getGender();
		 model.addAttribute("genderd", genderd);
		 model.addAttribute("coursedid", coursedid);
		 model.addAttribute("yearleveldid", yearleveldid);
		 model.addAttribute("semesterdid", semesterdid);
		 model.addAttribute("prospectusdid", prospectusdid);

		 
         return modelAndView;
	 }
	 
	 @RequestMapping(value = "/viewst/editst/{userId}", method = RequestMethod.POST)
		public String editStudent(String password, String lname, String mname, String fname, String bday, String address, String gender, String emailAddress, String courseId, String yearLevelId, String semesterId, String prospectusId, @PathVariable int userId) throws ParseException 
		{
			byte x = 1;
			int courseid = Integer.parseInt(courseId);
			int yearlevelid = Integer.parseInt(yearLevelId);
			int semesterid = Integer.parseInt(semesterId);
			int prospectusid = Integer.parseInt(prospectusId);
			
			Student student = new Student();
			Course course = new Course();
			YearLevel yearLevel = new YearLevel();
			Semester semester = new Semester();
			Prospectus prospectus = new Prospectus();
			
			SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
			Date date1 = date.parse(bday);
			
			course.setCourseId(courseid);
			yearLevel.setYearLevelId(yearlevelid);
			semester.setSemesterId(semesterid);
			prospectus.setProspectusId(prospectusid);
			
			student.setPassword(password);
			student.setLname(lname);
			student.setMname(mname);
			student.setFname(fname);
			student.setBday(date1);
			student.setAddress(address);
			student.setGender(gender);
			student.setEmailAddress(emailAddress);
			
			student.setUserId(userId);
			student.setCourse(course);
			student.setYearLevel(yearLevel);
			student.setSemester(semester);
			student.setProspectus(prospectus);
			
			student.setStatus(x);
			student.setEmailVerified("false");
			
			adminservice.EditStudent(student);

			return "admin/adminhome";
		}
	 
	 
	 /*@RequestMapping(value="viewf/editf/{userId}", method=RequestMethod.POST)
     public String editFaculty(@ModelAttribute Faculty faculty, @PathVariable int userId)
	 {
		 faculty.setUserId(userId);
		 logger.info("Birthday" + faculty.getBday());
		 adminservice.EditFaculty(faculty);
		 
		 return "admin/adminhome";	
     }*/
	 
}
