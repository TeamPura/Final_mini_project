package com.project.apprentice.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.apprentice.model.TimeSchedule;

public interface TimeScheduleRepository extends JpaRepository <TimeSchedule, Integer>  {

	
}
