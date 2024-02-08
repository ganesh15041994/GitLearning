package com.git.AdminDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.git.AdminModel.InterviewQuestion;
import com.git.AdminModel.Topic;

public interface InterviewQuestionRepo extends JpaRepository<InterviewQuestion, Integer> {

	List<InterviewQuestion> getInterviewQuestionByTopic(Topic topic);

	@Query("select i from InterviewQuestion i where i.interviewQuestionId=:interviewQuestionId")
	public InterviewQuestion getQuestionById(Integer interviewQuestionId);

	@Modifying
	@Query("delete  from InterviewQuestion i  where i.interviewQuestionId=:interviewQuestionId")
	public int deleteInterviewQuestionById(Integer interviewQuestionId);

	@Query("SELECT COUNT(*) from InterviewQuestion i where i.topic.chapter.course.id=:id")
	public int countInterviewQuestionByCourse(Integer id);

}
