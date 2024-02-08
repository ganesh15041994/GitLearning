package com.git.AdminDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Topic;

@Repository("topicRepository")
public interface TopicRepository  extends JpaRepository<Topic, Integer>  {
	
	
	public List<Topic> getAllTopicByChapter(Chapter chapter);
	
	
	@Modifying
	@Query("delete from Topic  t where t.topicId=:topicId ")
	public int isDeleteTopic(Integer topicId);

}
