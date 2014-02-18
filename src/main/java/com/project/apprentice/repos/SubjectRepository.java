package com.project.apprentice.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.apprentice.model.Prospectus;
import com.project.apprentice.model.Subject;

public interface SubjectRepository extends JpaRepository <Subject, Integer>  {
	
	public List<Subject> findByProspectus(Prospectus prospectus);
		
}
