package com.mateuszmidor.service;

import java.util.HashMap;
import java.util.Map;

import com.mateuszmidor.dto.User;

public class LoginService {
	
	private Map<String, String> users;
	
	public LoginService() {
		users = new HashMap<>();
		users.put("admin", "System administrator");
		users.put("mateusz", "Mateusz");
		users.put("mariusz", "Mariusz");
	}
	
	public boolean authenticate(String userId, String password) {
	
		// no such user
		if (!users.containsKey(userId))
			return false;
		
		// no password provided
		if (password.trim().equals(""))
			return false;
		
		// alright!
		return true;
	}
	
	public User getUser(String userId) {
		User user = new User();
		user.setUserId(userId);
		user.setUserName(users.get(userId));
		return user;
	}
}
