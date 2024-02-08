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
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
public class Topic {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int topicId;
	@Column(name = "topicName", nullable = false)
	private String topicName;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "chapterId", referencedColumnName = "chapterId")
	private Chapter chapter;

}
