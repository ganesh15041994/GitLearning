package com.git.AdminModel;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString

@Entity
@Table(name = "InterviewQuestion")
public class InterviewQuestion {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "interviewQuestionId")
	private int interviewQuestionId;
	private String Question;
	private String description;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "topicId", referencedColumnName = "topicId")
	private Topic topic;

}
