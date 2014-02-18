package com.project.apprentice.service;

import java.util.List;
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

public interface AdminService
{
	public List<College> DisplayAllColleges();
	public void AddNewCollege(College college);
	
	public List <Course> DisplayAllCourses();
	public void AddNewCourse(Course course);
	
	public List<Department> DisplayAllDepartments();
	public void AddNewDepartment(Department department);
	
	public List <Faculty> DisplayAllFaculty();
	public void AddNewFaculty(Faculty faculty);
	public void DeleteFaculty(int userId);
	public Faculty ViewFaculty(int userId);
	public void EditFaculty(Faculty faculty);
	public int FacultyCount ();
	
	public List <Prospectus> DisplayAllProspectus();
	public void AddNewProspectus (Prospectus prospectus);
	
	public List <Semester> DisplayAllSemesters();
	public void AddNewSemester(Semester semester);
	
	public void AddNewSchoolYear (SchoolYear schoolyear);
	
	public List <Student> DisplayAllStudents();
	public void AddNewStudent(Student student);
	public void DeleteStudent(int userId);
	public Student ViewStudent (int userId);
	public void EditStudent (Student student);
	public int StudentCount();
	
	public void AddNewSubject (Subject subject);
	
	public List <YearLevel> DisplayAllYearLevels();
	public void AddNewYearLevel(YearLevel yearLevel);

}
