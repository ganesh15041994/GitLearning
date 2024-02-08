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
@AllArgsConstructor
@NoArgsConstructor
@ToString 

@Entity
public class Video {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int videoId;
	private String title;
	private String description;
	private String url;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "topicId", referencedColumnName = "topicId")
	private Topic topic;

}
