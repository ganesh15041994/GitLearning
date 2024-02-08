package com.git.AdminModel;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@ToString
public class Chapter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int chapterId;
	@Column(nullable = false)
	private String chapterName;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "courseId", referencedColumnName = "id")
	private Course course;

}
