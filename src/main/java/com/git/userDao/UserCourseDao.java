package com.git.userDao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.git.AdminModel.UserCourse;

public interface UserCourseDao extends JpaRepository<UserCourse, Integer> {

}
