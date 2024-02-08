package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import com.git.AdminDao.CourseRepository;
import com.git.AdminModel.Course;

@Service
public class CourseService {

	@Autowired
	CourseRepository courseRepository;

	public boolean saveCourse(Course course) {
		if (course.getCourseName() != null && !course.getCourseName().trim().isEmpty()) {

			return courseRepository.save(course) != null;

		} else {
			// return courseRepository.save(course)!=null ? true:false;

			return false;
		}
	}

	public List<Course> getAllCourses() {
		List<Course> courseList = courseRepository.findAll();
		return courseList != null ? courseList : null;
	}

	@Cacheable("mycahce")
	public Course getSpecificCourse(Integer Id) {/*
													 * Optional<Course> course= courseRepository.findById(Id); Course c
													 * = course.get();
													 */
		return courseRepository.getSpecificCourse(Id);
	}

	@Transactional
	public boolean isDeleteCourse(Integer Id) {
		

		return courseRepository.isDelete(Id) != 0 ? true : false;
	}

}
