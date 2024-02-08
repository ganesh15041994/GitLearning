package com.git.security.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.git.security.model.User;
import com.git.security.repo.UserDao;

@Service
public class UserConfigService {

	@Autowired
	UserDao userDao;

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	public User saveUser(User user) {
		user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
		user.setRole("ROLE_USER");
		return userDao.save(user);
	}

	public User getUserByEmail(String email) {
		User u = userDao.findByEmail(email);
		if (u != null) {
			return u;
		} else {
			return null;
		}
	}
}
