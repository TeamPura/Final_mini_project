package com.project.apprentice.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.project.apprentice.model.CallInSick;
import com.project.apprentice.model.Day;
import com.project.apprentice.model.Prospectus;
import com.project.apprentice.model.Semester;
import com.project.apprentice.model.Student;
import com.project.apprentice.model.StudentClass;
import com.project.apprentice.model.Subject;
import com.project.apprentice.model.TimeSchedule;
import com.project.apprentice.model.YearLevel;
import com.project.apprentice.repos.CallInSickRepository;
import com.project.apprentice.repos.ClassRepository;
import com.project.apprentice.repos.DayRepository;
import com.project.apprentice.repos.ProspectusRepository;
import com.project.apprentice.repos.SemesterRepository;
import com.project.apprentice.repos.StudentClassRepository;
import com.project.apprentice.repos.StudentUserRepository;
import com.project.apprentice.repos.SubjectRepository;
import com.project.apprentice.repos.TimeScheduleRepository;
import com.project.apprentice.repos.YearLevelRepository;
import com.project.apprentice.model.Class;


@Service
public class StudentServiceImplementation implements StudentService{

	@Resource
	private StudentUserRepository studentRepo;
	
	@Resource
	private DayRepository dayRepo;
	
	@Resource
	private TimeScheduleRepository timeSchedRepo;
	
	@Resource
	private SubjectRepository subjectRepo;
	
	@Resource
	private YearLevelRepository yearLevelRepo;
	
	@Resource
	private SemesterRepository semesterRepo;
	
	@Resource
	private ProspectusRepository prospectusRepo;
	
	@Resource
	private ClassRepository classRepo;
	
	@Resource
	private StudentClassRepository studentClassRepo;
	
	@Resource
	private CallInSickRepository callInRepo;
	
	public Student getStudentInfo(int student_id){
		Student student_info = studentRepo.findOne(student_id);
		return student_info;
	}
	
	public Class getClassData(int class_id){
		Class clazz = classRepo.findOne(class_id);
		return clazz;
	}
	
	public List<Day> findallDays(){
		List<Day> listDays = dayRepo.findAll();
		return listDays;
	}
	
	public List<TimeSchedule> findallTimeSchedule(){
		List<TimeSchedule> listTimeSched = timeSchedRepo.findAll();
		return listTimeSched;
	}
	
	public List<Subject> findSubjectbyProspectusId(Prospectus prospectus){				
		List<Subject> subjects = subjectRepo.findByProspectus(prospectus);				
		return subjects;
	}
	
	public List<YearLevel> findAllYearLevels(){
		List<YearLevel> yearLevel = yearLevelRepo.findAll();
		return yearLevel;
	}
	
	public List<Semester> findAllSemester(){
		List<Semester> semesters = semesterRepo.findAll();
		return semesters;
	}
	
	public List<Class> findAllClassbySubjects(int subj_id){
		List<Class> clazz = classRepo.findBySubject_subjId(subj_id);
		return clazz;
	}
	
	public List<Object[]> findClassNumEnrollees(int subj_id){
		List<Object[]> classNumEnrollees = studentClassRepo.findByClassEnrollees(subj_id);
		return classNumEnrollees;
	}
	
	public List<Class> getClassInfo(int classId){
		List<Class> clazz = classRepo.findByClassInfo(classId);
		return clazz;
	}
	
	public void addStudentEnrollment(StudentClass sc){
		studentClassRepo.save(sc);
	}
	
	public List<StudentClass> getStudyLoad(int student_id){
		List<StudentClass> clazz = studentClassRepo.findByStudent_UserId(student_id);
		return clazz;		
	}
	
	public void addCallIn(CallInSick callin){
		callInRepo.save(callin);
	}
	
	public List<CallInSick> classCallIns(int student_id, int classId){
		List<CallInSick> callInLogs = callInRepo.findByStudent_UserIdAndClazz_classId(student_id, classId);
		return callInLogs;
	}
	
	public List<Object[]> getStudentClassCallInCount(int student_id, int class_id){
		List<Object[]> studentClassCallInCount = callInRepo.findByCountCallIns(class_id, student_id);
		return studentClassCallInCount;
	}


	
	
}
