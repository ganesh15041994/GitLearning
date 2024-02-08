package com.git.AdminDao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.git.AdminModel.Course;
import com.git.AdminModel.FacultyProfile;

public interface FacultyRepository extends JpaRepository<FacultyProfile, Integer> {
	
	@Query("select f from FacultyProfile f where f.facultyId=:profileId")
	public FacultyProfile getFacultyProfileById(Integer profileId);
	
	@Modifying
	@Query("delete from FacultyProfile f where f.facultyId=:id")
	public int isDeleteProfile(Integer id );
	
	public FacultyProfile getProfileByCourse(Course course);

}
