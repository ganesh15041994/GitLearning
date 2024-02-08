package com.git.AdminModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*courseId      | int         | NO   | PRI | NULL    | auto_increment |
| courseName    | text        | YES  |     | NULL    |                |
| fees          | int         | YES  |     | NULL    |                |
| noOfHours     | int         | YES  |     | NULL    |                |
| banner        | text        | YES  |     | NULL    |                |
| objectives    | text        | YES  |     | NULL    |                |
| prerequisites | text        | YES  |     | NULL    |                |
| type          | varchar(10) | YES*/

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(nullable = false)
	private String courseName;
	@Column(nullable = false)
	private int fees;
	@Column(nullable = false)
	private int noOfHours;
	@Transient
	private MultipartFile banner;
	@Column(nullable = false)
	private String path;
	@Column(nullable = false)
	private String objectives;
	@Column(nullable = false)
	private String prerequisites;
	@Column(nullable = false)
	private String type;
}
