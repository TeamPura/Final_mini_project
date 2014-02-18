package com.project.apprentice.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.apprentice.model.Faculty;

public interface FacultyUserRepository extends JpaRepository <Faculty, Integer> 
{
	public Faculty findByUserIdAndPassword(int userId, String password);
}
