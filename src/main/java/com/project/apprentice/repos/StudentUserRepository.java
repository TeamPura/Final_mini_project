package com.project.apprentice.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.apprentice.model.Student;

public interface StudentUserRepository extends JpaRepository <Student, Integer>  {
		public Student findByUserIdAndPassword(int userId, String password);
}
