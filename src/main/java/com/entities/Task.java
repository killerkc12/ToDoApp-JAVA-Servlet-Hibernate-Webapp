package com.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Task {
	@Id
	@GeneratedValue
	private int tid;
	private String task_name,status;
	@OneToOne(cascade = CascadeType.ALL)
	private User user;
	
	
	public Task() {
		// TODO Auto-generated constructor stub
	}

	public Task(String task_name, String status,User user) {
		super();
		this.task_name = task_name;
		this.status = status;
		this.user = user;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTask_name() {
		return task_name;
	}
	public void setTask_name(String task_name) {
		this.task_name = task_name;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	
}
