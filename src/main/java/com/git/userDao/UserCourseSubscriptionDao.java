package com.git.userDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.git.AdminModel.Course;
import com.git.userModel.UserCourseSubscription;

public interface UserCourseSubscriptionDao extends JpaRepository<UserCourseSubscription, Integer> {
	
	
	List<UserCourseSubscription> findByUserUid(int userId);

}
