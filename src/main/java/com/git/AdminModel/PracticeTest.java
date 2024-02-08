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

/*
mysql> desc practiceTest;
+----------------+------+------+-----+---------+----------------+
| Field          | Type | Null | Key | Default | Extra          |
+----------------+------+------+-----+---------+----------------+
| practiceTestId | int  | NO   | PRI | NULL    | auto_increment |
| question       | text | YES  |     | NULL    |                |
| description    | text | YES  |     | NULL    |                |
| option1        | text | YES  |     | NULL    |                |
| option2        | text | YES  |     | NULL    |                |
| option3        | text | YES  |     | NULL    |                |
| option4        | text | YES  |     | NULL    |                |
| answer         | int  | YES  |     | NULL    |                |
| topicId        | int  | YES  | MUL | NULL    |                |
+----------------+------+------+-----+---------+----------------+
9 rows in set (0.04 sec)*/

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString

@Entity(name = "PracticeTest")
public class PracticeTest {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int practiceTestId;
	@Column(nullable = false)
	private String question;
	@Column(nullable = false)
	private String description;
	@Column(nullable = false)
	private String option1;
	@Column(nullable = false)
	private String option2;
	@Column(nullable = false)
	private String option3;
	@Column(nullable = false)
	private String option4;
	@Column(nullable = false)
	private String answer;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "topicId", referencedColumnName = "topicId")
	private Topic topic;

}
