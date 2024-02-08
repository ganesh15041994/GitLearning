package com.git.userModel;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.git.AdminModel.Course;
import com.git.security.model.User;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@AllArgsConstructor
@NoArgsConstructor


@Entity
public class Cart {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cartId;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="uid", referencedColumnName = "uid")
	private User user;
	
	@OneToOne
	@JoinColumn(name="cid" , referencedColumnName = "id")
	private Course course;

}
