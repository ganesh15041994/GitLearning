package com.git.AdminDao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.git.AdminModel.Course;

public interface CourseRepository extends JpaRepository<Course, Integer> {

	
	@Query("select c from Course c where c.id=:id")
	public Course getSpecificCourse(Integer id);
	
	
	@Modifying
	@Query("delete  from Course c where c.id=:id")
	public int isDelete(Integer id);
	
}
