package com.git.AdminDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.git.AdminModel.Topic;
import com.git.AdminModel.Video;

@Repository("videoRepository")
public interface VideoRepository extends JpaRepository<Video, Integer> {
	
	public List<Video> getAllVideoByTopic(Topic topic);
	
	@Query("select v from Video v where v.videoId=:videoId")
	public Video getVideoById(Integer videoId);
	
	
	@Modifying
	@Query("delete from Video v where v.videoId=:videoId")
	public int isDeleteVideo(Integer videoId);
	
	
	@Query("SELECT COUNT(*) FROM Video v WHERE v.topic.chapter.course.id = :id")
	public int countByCourse(Integer id);
	

}
