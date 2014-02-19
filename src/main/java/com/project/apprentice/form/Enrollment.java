package com.project.apprentice.form;

import java.util.ArrayList;
import java.util.List;

import com.project.apprentice.model.Class;

public class Enrollment {
	
	private int student_id;
	private List<Class> clazz = new ArrayList<Class>();
	private ArrayList<Integer> schedule_arr = new ArrayList<Integer>();
	private ArrayList<Integer> days_arr = new ArrayList<Integer>();
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
		
	public ArrayList<Integer> getDays_arr() {
		return days_arr;
	}

	public void setDays_arr(ArrayList<Integer> days_arr) {
		this.days_arr = days_arr;
	}

	public ArrayList<Integer> getSchedule_arr() {
		return schedule_arr;
	}

	public void setSchedule_arr(ArrayList<Integer> schedule_arr) {
		this.schedule_arr = schedule_arr;
	}
	
	//other methods
	
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
	
	public void addSchedId(int schedule_id){
		schedule_arr.add(schedule_id);
	}
	
	public void addDayId(int day_id){
		days_arr.add(day_id);
	}
	
	public boolean conflictTime(int time_id){
		boolean flag = false;
		for(int i=0; i<clazz.size(); i++){
			if(clazz.get(i).getSchedule().getScheduleId() == time_id)
				flag = true;
		}
		return flag;			
	}
	
	public boolean conflictDay(int day_id){
		return (days_arr.contains(day_id));			
	}
	
	public String getClassName(int class_id){
		String flag = "other";
		for(int i=0; i<clazz.size(); i++){
			if(clazz.get(i).getClassId() == class_id)
				flag = clazz.get(i).getSubject().getSubjName();
		}
		return flag;
	}
	
	public boolean isSubjectEnrolled(int subjectId){
		boolean flag = false;
		for(int i=0; i<clazz.size(); i++){
			if(clazz.get(i).getSubject().getSubjId() == subjectId)
				flag = true;
		}
		return flag;
	}
	

}
