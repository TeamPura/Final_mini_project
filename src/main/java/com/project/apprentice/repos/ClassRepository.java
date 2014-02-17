package com.project.apprentice.repos;


import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.apprentice.model.Class;

public interface ClassRepository extends JpaRepository <Class, Integer>  {
	
	@Query("SELECT c " +
			"FROM Class c, Subject subj, Schedule sched, Day days, Room room " +
			"WHERE c.subject.subjId = subj.subjId " +
			"AND c.schedule.scheduleId = sched.scheduleId " +
			"AND c.day.dayId = days.dayId " +
			"AND c.room.roomId = room.roomId " +
			"AND c.subject.subjId = :subjId")
	public List<Class> findBySubject_subjId(@Param("subjId") int subjId);
	
	@Query("SELECT c " +
			"FROM Class c, Subject subj, Schedule sched, Day days, Room room, Faculty faculty, Fee fee " +
			"WHERE c.subject.subjId = subj.subjId " +
			"AND subj.fee.feeId = fee.feeId " +
			"AND c.schedule.scheduleId = sched.scheduleId " +
			"AND c.day.dayId = days.dayId " +
			"AND c.room.roomId = room.roomId " +
			"AND c.faculty.userId = faculty.userId " +
			"AND c.classId = :classId")
	public List<Class> findByClassInfo(@Param("classId") int classId);
		
}
