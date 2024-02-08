
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

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString

@Entity(name = "FacultyProfile")
public class FacultyProfile {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int facultyId;
	private String facultyName;
	@Column(columnDefinition = "TEXT")
	private String facultyPhoto;
	@Column(columnDefinition = "TEXT")
	private String designation;
	@Column(columnDefinition = "TEXT")
	private String qualification;
	@Column(columnDefinition = "TEXT")
	private String skillset;
	@Column(columnDefinition = "TEXT")
	private String experience;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "courseId", referencedColumnName = "id")
	private Course course;

}
