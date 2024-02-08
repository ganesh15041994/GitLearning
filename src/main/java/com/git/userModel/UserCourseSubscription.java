package com.git.userModel;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.git.AdminModel.Course;
import com.git.security.model.User;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Entity
public class UserCourseSubscription {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userCourseId;
	
	@ManyToOne
	@JoinColumn(name ="uid")
	private User user;
	@ManyToOne
	@JoinColumn(name = "cid")
	private Course course;
	private boolean enable;
}
