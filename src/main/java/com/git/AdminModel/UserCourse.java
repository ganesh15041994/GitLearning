package com.git.AdminModel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.git.userModel.UserProfile;

@Entity
public class UserCourse {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Cascade(CascadeType.ALL)
	private int userCourseId;

	@OneToOne
	@JoinColumn(referencedColumnName = "userId", name = "UserId")
	private UserProfile profile;

	@OneToOne
	@JoinColumn(name = "CourseId", referencedColumnName = "id")
	private Course course;

}
