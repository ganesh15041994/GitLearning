package com.git.userService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminModel.Course;
import com.git.userDao.UserCourseSubscriptionDao;
import com.git.userModel.UserCourseSubscription;

@Service("userCourseSubscriptionService")
public class UserCourseSubscriptionService {

	@Autowired
	UserCourseSubscriptionDao courseSubscriptionDao;

	public UserCourseSubscription saveUserCourse(UserCourseSubscription courseSubscription) {
		return courseSubscriptionDao.save(courseSubscription);
	}
	
	
	public List<UserCourseSubscription> findCourses(int id)
	{
		
		return courseSubscriptionDao.findByUserUid(id);
	}

}
