package com.akash.project.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.akash.project.model.User;
import com.akash.project.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public void save(User user) {
		userRepository.save(user);
	}

	@Override
	public boolean isValidUser(String id, String password) {
		List<User> users=userRepository.findByIdAndPassword(id, password);
		if(users==null || users.size()!=1) {
			return false;
		}
		return true;
	}
	
	public List<String> getAllId() {
		List<String> ids = new ArrayList<String>();
		for(User user : userRepository.findAll()) {
			ids.add(user.getId());
		}
		return ids;
	}
	
	public User findbyId(String id) {
		Optional<User> user = userRepository.findById(id);
		if(!user.isPresent()) {
			return null;
		}
		return user.get();
	}
}
