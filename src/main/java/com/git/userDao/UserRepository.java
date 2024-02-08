package com.git.userDao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.git.userModel.UserProfile;

public interface UserRepository extends JpaRepository<UserProfile, Integer> {
	
	
	@Query("select u from UserProfile u where u.emailId=:email and u.password=:password")
	public UserProfile getUserProfile(String email,String password);

}
