package com.project.apprentice.repos;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.project.apprentice.model.StudentClass;

public interface StudentClassRepository extends JpaRepository <StudentClass, Integer>  {
	
	@Query("SELECT c.classId as enrolClassId, count(sc.student.userId) as enrolClassCount " +
			"FROM Class c, StudentClass sc " +
			"WHERE c.classId = sc.clazz.classId " +
			"AND c.subject.subjId = :subjId " +
			"GROUP BY sc.clazz.classId")
	public List<Object[]> findByClassEnrollees(@Param("subjId") int subjId);
	
	public List<StudentClass> findByStudent_UserId(int student_id);
	
	
	
	
}
