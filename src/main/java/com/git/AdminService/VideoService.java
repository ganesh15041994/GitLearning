package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.VideoRepository;
import com.git.AdminModel.Topic;
import com.git.AdminModel.Video;

@Service("videoService")
public class VideoService {

	@Autowired
	VideoRepository videoRepository;

	public boolean isSaveVideo(Video video) {
		return videoRepository.save(video) != null ? true : false;
	}

	public List<Video> getAllVideoByTopic(Topic topic) {
		return videoRepository.getAllVideoByTopic(topic);
	}
	
	public Video getVideoById(Integer videoId)
	{
		return videoRepository.getVideoById(videoId);
	}
	
	
	@Transactional
	public boolean isDeleteVideo(Integer videoId)
	{
		int result = videoRepository.isDeleteVideo(videoId);
		return result==1?true:false;
	}
	
	public int getNoOfVideoOfCourse(Integer courseId)
	{
		return videoRepository.countByCourse(courseId);
	}

}
