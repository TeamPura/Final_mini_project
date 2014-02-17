package com.project.apprentice.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the time_schedule database table.
 * 
 */
@Entity
@Table(name="time_schedule")
public class TimeSchedule implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="ts_id")
	private int tsId;

	@Column(name="ts_name")
	private String tsName;

	@Column(name="ts_time_end")
	private String tsTimeEnd;

	@Column(name="ts_time_start")
	private String tsTimeStart;

	public TimeSchedule() {
	}

	public int getTsId() {
		return this.tsId;
	}

	public void setTsId(int tsId) {
		this.tsId = tsId;
	}

	public String getTsName() {
		return this.tsName;
	}

	public void setTsName(String tsName) {
		this.tsName = tsName;
	}

	public String getTsTimeEnd() {
		return this.tsTimeEnd;
	}

	public void setTsTimeEnd(String tsTimeEnd) {
		this.tsTimeEnd = tsTimeEnd;
	}

	public String getTsTimeStart() {
		return this.tsTimeStart;
	}

	public void setTsTimeStart(String tsTimeStart) {
		this.tsTimeStart = tsTimeStart;
	}

}