package com.lithan.beans;

public class User {

	private int user_id;
	private String username;
	private String user_password;
	private String email;
	private String fname;
	private String lname;
	/* Will be implemented based on time
	private String institute;
	private String course;
	private int edu_start_year;
	private int edu_end_year;
	*/
	
	public int getId() {
		return user_id;
	}
	public void setId(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	/*
	public String getInstitute() {
		return institute;
	}
	public void setInstitute(String institute) {
		this.institute = institute;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public int getEdu_start_year() {
		return edu_start_year;
	}
	public void setEdu_start_year(int edu_start_year) {
		this.edu_start_year = edu_start_year;
	}
	public int getEdu_end_year() {
		return edu_end_year;
	}
	public void setEdu_end_year(int edu_end_year) {
		this.edu_end_year = edu_end_year;
	}
	*/

	
}
