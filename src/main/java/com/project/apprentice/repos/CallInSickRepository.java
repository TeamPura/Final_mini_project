package com.project.apprentice.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.apprentice.model.CallInSick;

public interface CallInSickRepository extends JpaRepository <CallInSick, Integer>  {
	
	public List<CallInSick> findByStudent_UserIdAndClazz_classId(int student_id, int classId);
	
	@Query("SELECT cis.clazz.classId, count(cis.clazz.classId) " +
			"FROM CallInSick cis " +
			"WHERE cis.clazz.classId = :class_id " +
			"AND cis.student.userId = :student_id " +
			"GROUP BY cis.clazz.classId")
	public List<Object[]> findByCountCallIns(@Param("class_id") int class_id, @Param("student_id") int student_id);
	
}
