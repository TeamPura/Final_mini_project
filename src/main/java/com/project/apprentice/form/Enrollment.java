package com.project.apprentice.form;

import java.util.ArrayList;
import java.util.List;

import com.project.apprentice.model.Class;

public class Enrollment {
	
	private int student_id;
	private List<Class> clazz = new ArrayList<Class>();
	public int totalUnits;
	
	public Enrollment(){	
		
	}
				
	public void addClassInformation(List<Class> clazzes){
		clazz.addAll(clazzes);
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	
	public int getTotalUnits(){
		return this.totalUnits;
	}
	
	public int totalUnitsClassEnrolled(int unit){
		this.totalUnits = this.totalUnits + unit;
		return totalUnits;
	}

	
	public List<Class> getClazz() {
		return clazz;
	}

	public void setClazz(List<Class> clazz) {
		this.clazz = clazz;
	}
	
	public void unEnrollClass(int clazzId){
		for(int i=0; i<clazz.size(); i++){
			if(clazz.get(i).getClassId() == clazzId){
				clazz.remove(i);
			}
		}
	}
	
	public void clearContents(){
		clazz.clear();
	}
	

}
