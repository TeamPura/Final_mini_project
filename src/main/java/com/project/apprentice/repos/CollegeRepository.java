package com.project.apprentice.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import com.project.apprentice.model.College;

public interface CollegeRepository extends JpaRepository <College, Long>
{

}
