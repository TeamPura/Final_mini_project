package com.project.apprentice.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.apprentice.model.Course;

public interface CourseRepository extends JpaRepository <Course, Long>
{
	
}
