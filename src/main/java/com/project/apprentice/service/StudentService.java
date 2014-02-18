package com.project.apprentice.service;


import java.util.List;

import com.project.apprentice.model.CallInSick;
import com.project.apprentice.model.Day;
import com.project.apprentice.model.Prospectus;
import com.project.apprentice.model.Semester;
import com.project.apprentice.model.Student;
import com.project.apprentice.model.StudentClass;
import com.project.apprentice.model.Subject;
import com.project.apprentice.model.TimeSchedule;
import com.project.apprentice.model.YearLevel;
import com.project.apprentice.model.Class;


public interface StudentService {
	
	//get student information
	public Student getStudentInfo(int student_id);

	//showing plot schedule in enrollment
	public List<Day> findallDays();
	public List<TimeSchedule> findallTimeSchedule();
	
	//in showing the prospectus in enrollment
	public List<Subject> findSubjectbyProspectusId(Prospectus prospectus);
	public List<Semester> findAllSemester();
	public List<YearLevel> findAllYearLevels();	
	
	//find all classes of a subject
	public List<Class> findAllClassbySubjects(int subj_id);
	public List<Object[]> findClassNumEnrollees(int subj_id);
	
	//get all class information
	public List<Class> getClassInfo(int classId);
	public Class getClassData(int class_id);
	
	//add student enrollment
	public void addStudentEnrollment(StudentClass sc);
	
	//get studyLoad
	public List<StudentClass> getStudyLoad(int student_id);
	
	//call ins
	public void addCallIn(CallInSick callin);
	public List<CallInSick> classCallIns(int student_id, int classId);
	public List<Object[]> getStudentClassCallInCount(int student_id, int class_id);
	
	

	
}
