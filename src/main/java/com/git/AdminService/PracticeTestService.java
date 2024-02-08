package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.PracticeTestRepository;
import com.git.AdminModel.PracticeTest;
import com.git.AdminModel.Topic;

@Service("practiceTestService")
public class PracticeTestService {

	@Autowired
	PracticeTestRepository practiceTestRepository;

	@Autowired
	TopicService topicService;

	public boolean isSavePracticeTestQuestion(PracticeTest practiceTest) {
		return practiceTestRepository.save(practiceTest) != null;
	}

	public List<PracticeTest> getPracriceTestQuestionByTopic(Topic topic) {
		return practiceTestRepository.getPracticeTestByTopic(topic);
	}

	public PracticeTest getPracticeQuestionById(Integer pr) {
		return practiceTestRepository.getPracticeQuestionById(pr);
	}

	public boolean isUpdate(PracticeTest practiceTest) {
		PracticeTest test = practiceTestRepository.getPracticeQuestionById(practiceTest.getPracticeTestId());
		test.setAnswer(practiceTest.getAnswer());
		test.setDescription(practiceTest.getDescription());
		test.setOption1(practiceTest.getOption1());
		test.setOption2(practiceTest.getOption2());
		test.setOption3(practiceTest.getOption3());
		test.setOption4(practiceTest.getOption4());
		test.setQuestion(practiceTest.getQuestion());

		test.setTopic(practiceTest.getTopic());
		if (practiceTestRepository.save(test) != null) {
			return true;
		} else {
			return false;
		}

	}

	@Transactional
	public boolean isDeletePracticeTestQuestion(Integer id) {
		return practiceTestRepository.isDeletePracticeQuestion(id) != 0 ? true : false;
	}
	
	public int getAllPracticeQuestionByCourse(Integer courseId)
	{
		return practiceTestRepository.totalPracticeTestQuestionByCourse(courseId);
	}
}
