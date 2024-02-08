package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.FacultyRepository;
import com.git.AdminModel.Course;
import com.git.AdminModel.FacultyProfile;

@Service("facultyService")
public class FacultyService {

	@Autowired
	FacultyRepository facultyRepository;

	public boolean isSaveFacultyProfile(FacultyProfile facultyProfile) {
		return facultyRepository.save(facultyProfile) != null ? true : false;
	}

	public List<FacultyProfile> getAllFaculyDetails() {
		return facultyRepository.findAll();
	}

	public FacultyProfile getFacultyProfileById(Integer profileId) {
		return facultyRepository.getFacultyProfileById(profileId);
	}

	@Transactional
	public boolean isDelete(Integer id) {
		return facultyRepository.isDeleteProfile(id) == 1 ? true : false;
	}

	public FacultyProfile getProfileByCourse(Course course) {
		return facultyRepository.getProfileByCourse(course);
	}
}
