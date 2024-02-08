package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.TopicRepository;
import com.git.AdminModel.Chapter;
import com.git.AdminModel.Topic;

@Service("topicService")
public class TopicService {

	@Autowired
	TopicRepository topicRepository;

	public boolean saveSingleTopic(Topic topic) {

		return topicRepository.save(topic) != null;
	}

	public List<Topic> getAllTopicByChapter(Chapter chapter) {
		return topicRepository.getAllTopicByChapter(chapter);
	}

	public Topic getSingleTopicById(Integer id) {

		Topic t = topicRepository.findById(id).get();
		return t != null ? t : null;
	}

	@Transactional
	public boolean isDeleteTopic(Integer topicId) {
		int result = topicRepository.isDeleteTopic(topicId);
		return result == 1 ? true : false;
	}
}
