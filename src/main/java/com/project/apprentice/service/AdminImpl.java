package com.project.apprentice.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.project.apprentice.model.Admin;
import com.project.apprentice.model.College;
import com.project.apprentice.model.Course;
import com.project.apprentice.model.Department;
import com.project.apprentice.model.Faculty;
import com.project.apprentice.model.Fee;
import com.project.apprentice.model.Prospectus;
import com.project.apprentice.model.Room;
import com.project.apprentice.model.Schedule;
import com.project.apprentice.model.SchoolYear;
import com.project.apprentice.model.Semester;
import com.project.apprentice.model.Student;
import com.project.apprentice.model.Subject;
import com.project.apprentice.model.YearLevel;
import com.project.apprentice.repos.AdminUserRepository;
import com.project.apprentice.repos.CollegeRepository;
import com.project.apprentice.repos.CourseRepository;
import com.project.apprentice.repos.DepartmentRepository;
import com.project.apprentice.repos.FacultyUserRepository;
import com.project.apprentice.repos.FeeRepository;
import com.project.apprentice.repos.ProspectusRepository;
import com.project.apprentice.repos.RoomRepository;
import com.project.apprentice.repos.ScheduleRepository;
import com.project.apprentice.repos.SchoolYearRepository;
import com.project.apprentice.repos.SemesterRepository;
import com.project.apprentice.repos.StudentUserRepository;
import com.project.apprentice.repos.SubjectRepository;
import com.project.apprentice.repos.YearLevelRepository;

@Service
public class AdminImpl implements AdminService
{
	@Resource
	private CollegeRepository collegerepos;
	@Resource
	private CourseRepository courserepos;
	@Resource
	private DepartmentRepository departmentrepos;
	@Resource
	private FacultyUserRepository facultyrepos;
	@Resource
	private ProspectusRepository prospectusrepos;
	@Resource
	private SemesterRepository semesterrepos;
	@Resource
	private YearLevelRepository yearLevelrepos;
	@Resource
	private StudentUserRepository studentrepos;
	@Resource
	private SubjectRepository subjectrepos;
	@Resource
	private SchoolYearRepository schoolyearrepos;
	@Resource
	private FeeRepository feerepos;
	@Resource
	private RoomRepository roomrepos;
	@Resource
	private ScheduleRepository schedulerepos;
	@Resource
	private AdminUserRepository adminrepos;
	//COLLEGES
	public List<College> DisplayAllColleges()
	{
		List <College> allColleges = collegerepos.findAll();
		return allColleges;
	}
	
	public void AddNewCollege(College college)
	{
		collegerepos.save(college);
	}

	
	//COURSES
	public List<Course> DisplayAllCourses()
	{
		List <Course> allCourses = courserepos.findAll();
		return allCourses;
	}
	
	public void AddNewCourse(Course course)
	{
		courserepos.save(course);
	}
	
	
	//DEPARTMENTS
	public List<Department> DisplayAllDepartments()
	{
		List <Department> allDepts = departmentrepos.findAll();
		return allDepts;
	}

	public void AddNewDepartment(Department department)
	{
		departmentrepos.save(department);
	}

	
	//FACULTY
	public List<Faculty> DisplayAllFaculty()
	{
		List <Faculty> allFaculty = facultyrepos.findAll();
		return allFaculty;
	}

	public void AddNewFaculty(Faculty faculty)
	{
		facultyrepos.save(faculty);
	}
	
	public void DeleteFaculty(int userId)
	{
		byte x = 0;
		Faculty faculty = facultyrepos.findOne(userId);
		faculty.setStatus(x);	
		facultyrepos.save(faculty);
	}
	
	public Faculty ViewFaculty(int userId)
	{
		Faculty faculty = facultyrepos.findOne(userId);
		return faculty;
	}
	
	public void EditFaculty(Faculty faculty)
	{
		facultyrepos.save(faculty);
	}
	
	public int FacultyCount()
	{
		int facultycount = (int) facultyrepos.count();
		return facultycount;
	}
	
	
	//PROSPECTUS
	public List<Prospectus> DisplayAllProspectus()
	{
		List <Prospectus> allProspectus = prospectusrepos.findAll();
		return allProspectus;
	}

	public void AddNewProspectus(Prospectus prospectus)
	{
		prospectusrepos.save(prospectus);
	}


	//SEMESTERS
	public List<Semester> DisplayAllSemesters()
	{
		List <Semester> allSemesters = semesterrepos.findAll();
		return allSemesters;
	}

	public void AddNewSemester(Semester semester)
	{
		semesterrepos.save(semester);
	}
	
	
	//SCHOOL YEAR
	public void AddNewSchoolYear (SchoolYear schoolyear)
	{
		schoolyearrepos.save(schoolyear);
	}
	
	
	//STUDENTS
	public List<Student> DisplayAllStudents()
	{
		List <Student> allStudents = studentrepos.findAll();
		return allStudents;
	}

	public void AddNewStudent(Student student)
	{
		studentrepos.save(student);
	}

	public void DeleteStudent(int userId)
	{
		byte x = 0;
		Student student = studentrepos.findOne(userId);
		student.setStatus(x);
		studentrepos.save(student);
	}

	public Student ViewStudent(int userId)
	{
		Student student = studentrepos.findOne(userId);
		return student;
	}

	public void EditStudent(Student student)
	{
		studentrepos.save(student);
	}
	
	public int StudentCount()
	{
		int facultycount = (int) facultyrepos.count();
		return facultycount;
	}
	
	//YEAR LEVELS
	public List <YearLevel> DisplayAllYearLevels()
	{
		List <YearLevel> allyearLevels = yearLevelrepos.findAll();
		return allyearLevels;
	}

	public void AddNewYearLevel(YearLevel yearLevel)
	{
		yearLevelrepos.save(yearLevel);
	}

	//SUBJECT
	public void AddNewSubject(Subject subject)
	{
		subjectrepos.save(subject);
	}


	public List<Fee> DisplayAllFees()
	{
		List <Fee> allfees = feerepos.findAll();
		return allfees;
	}

	public void AddNewFee(Fee fee)
	{
		feerepos.save(fee);
	}

	public void AddNewRoom(Room room)
	{
		roomrepos.save(room);
	}

	public void AddNewSchedule(Schedule schedule)
	{
		schedulerepos.save(schedule);
	}


	public void AddNewAdmin(Admin admin)
	{
		adminrepos.save(admin);
	}
}
