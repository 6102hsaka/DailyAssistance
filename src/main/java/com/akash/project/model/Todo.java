package com.akash.project.model;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.web.bind.annotation.GetMapping;

@Document(collection = "todo")
public class Todo {
	@Id
	private String id;
	private String title;
	private String description;
	private Date targetDate;
	private boolean isCompleted;

	public Todo() {

	}

	public Todo(String id, String title, String description, Date targetDate, boolean isCompleted) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.targetDate = targetDate;
		this.isCompleted = isCompleted;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(Date targetDate) {
		this.targetDate = targetDate;
	}

	public boolean isCompleted() {
		return isCompleted;
	}

	public void setCompleted(boolean isCompleted) {
		this.isCompleted = isCompleted;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", title=" + title + ", description=" + description + ", targetDate=" + targetDate
				+ ", isCompleted=" + isCompleted + "]";
	}
}
