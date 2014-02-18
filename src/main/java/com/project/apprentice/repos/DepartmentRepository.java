package com.project.apprentice.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.apprentice.model.Department;


public interface DepartmentRepository extends JpaRepository <Department, Long>
{

}
