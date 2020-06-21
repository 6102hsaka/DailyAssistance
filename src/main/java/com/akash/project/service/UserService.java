package com.akash.project.service;

import java.util.List;

import com.akash.project.model.User;

public interface UserService {
	
	public void save(User user);
	public boolean isValidUser(String id, String password);
	public List<String> getAllId();
	public User findbyId(String id); 
	
}
