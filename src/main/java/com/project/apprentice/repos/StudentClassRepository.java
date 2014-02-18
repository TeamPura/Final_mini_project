package com.project.apprentice.repos;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.project.apprentice.model.Class;
import com.project.apprentice.model.StudentClass;

public interface StudentClassRepository extends JpaRepository <StudentClass, Integer>  {
	
	@Query("SELECT c.classId, (SELECT COUNT(sc.clazz.classId) " +
							"FROM StudentClass sc " +
							"WHERE c.classId = sc.clazz.classId) AS cntEnrollees " +
			"FROM Class c " +
			"WHERE c.subject.subjId = :subjId")
	public List<Object[]> findByClassEnrollees(@Param("subjId") int subjId);
	
	public List<StudentClass> findByStudent_UserId(int student_id);
	
	//faculty
	public List<StudentClass> findByClazz(Class classs);
	public List<StudentClass> findByClazzClassId(int classId);
	
	
	
	
}
