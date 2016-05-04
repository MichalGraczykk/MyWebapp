package com.michaelcompany.models;

import java.io.Serializable;

import org.springframework.data.repository.CrudRepository;

public interface UserInterface extends CrudRepository<User, Serializable>{
	public User findByUserId(int userId);
	public User findByLogin(String login);
}
