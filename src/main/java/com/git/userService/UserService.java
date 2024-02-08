package com.git.userService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.userDao.UserRepository;
import com.git.userModel.UserProfile;

@Service("userService")
public class UserService {

	@Autowired
	UserRepository userRepository;

	public boolean isSaveUser(UserProfile profile) {
		return userRepository.save(profile) != null ? true : false;
	}

	public UserProfile getUser(String email, String password) {
		return userRepository.getUserProfile(email, password);
	}

}
