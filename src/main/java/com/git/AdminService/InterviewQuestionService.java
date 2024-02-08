package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.InterviewQuestionRepo;
import com.git.AdminModel.InterviewQuestion;
import com.git.AdminModel.Topic;

@Service("interviewQuestionService")
public class InterviewQuestionService {

	@Autowired
	InterviewQuestionRepo interviewQuestionRepo;

	public boolean isAddInterviewQuestion(InterviewQuestion interviewQuestion) {
		return interviewQuestionRepo.save(interviewQuestion) != null ? true : false;
	}

	public List<InterviewQuestion> getAllInterviewQuestionByTopic(Topic topic) {
		return interviewQuestionRepo.getInterviewQuestionByTopic(topic);
	}

	public InterviewQuestion getInterviewQuestionById(Integer interviewQuestionId) {
		return interviewQuestionRepo.getQuestionById(interviewQuestionId);
	}

	@Transactional
	public boolean isDeleteInterviewQuestion(Integer interviewQuestionId) {
		return interviewQuestionRepo.deleteInterviewQuestionById(interviewQuestionId) == 1 ? true : false;
	}

	public int noOfInterviewQuestion(Integer courseId) {
		return interviewQuestionRepo.countInterviewQuestionByCourse(courseId);
	}
}
