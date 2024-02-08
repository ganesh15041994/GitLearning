package com.git.AdminModel;

import javax.persistence.CascadeType;
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

@Entity
public class Assignment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int assignmentId;
	private String question;
	private String description;
	private String type;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "topicId", referencedColumnName = "topicId")
	private Topic topic;

}
