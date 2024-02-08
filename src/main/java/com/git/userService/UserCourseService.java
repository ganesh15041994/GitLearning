package com.git.userService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.userDao.UserCourseDao;

@Service("userCourseService")
public class UserCourseService {
	
	@Autowired
	UserCourseDao userCourseDao;
	
	public boolean isSavePurchasedCourseDetail()
	{
		return false;
	}

}
