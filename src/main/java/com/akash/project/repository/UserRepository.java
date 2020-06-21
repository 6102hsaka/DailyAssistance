package com.akash.project.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import com.akash.project.model.User;

public interface UserRepository extends MongoRepository<User, String> {

	public List<User> findByIdAndPassword(String id, String password);
	
	@Query("SELECT u.id FROM user u")
	public List<String> getAllId();
	
	
	public Optional<User> findById(String id);

}
