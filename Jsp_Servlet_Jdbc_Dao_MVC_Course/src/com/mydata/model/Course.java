package com.mydata.model;

public class Course {

	private int id;
	private String name;
	private float fees;
	private int duration;
	
	public Course(){}
	public Course(int id, String name, float fees, int duration) {
		super();
		this.id = id;
		this.name = name;
		this.fees = fees;
		this.duration = duration;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getFees() {
		return fees;
	}
	public void setFees(float fees) {
		this.fees = fees;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	
}
