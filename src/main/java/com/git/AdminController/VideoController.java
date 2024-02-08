package com.git.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminModel.Topic;
import com.git.AdminModel.Video;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.AdminService.TopicService;
import com.git.AdminService.VideoService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class VideoController {

	@Autowired
	CourseService courseService;

	@Autowired
	ChapterService chapterService;

	@Autowired
	TopicService topicService;

	@Autowired
	VideoService videoService;

	@GetMapping("/newVideo")
	public String addNewVideoTopicWise(Model model) {
		List<Course> clist = courseService.getAllCourses();
		model.addAttribute("course", clist);
		return "NewVideo";
	}

	@GetMapping("/getAllChapter/{courseId}")
	@ResponseBody
	public String getChapterCourseWise(@PathVariable("courseId") Integer courseId) {
		Course c = courseService.getSpecificCourse(courseId);
		List<Chapter> chapterList = chapterService.getAllChapter(c);
		
		String optionString = "<option selected disabled=\"disabled\">Select Chapter\r\n"
				+ "										Here</option>";
		for (Chapter chapter : chapterList) {
			optionString += "<option value =" + chapter.getChapterId() + ">" + chapter.getChapterName() + "</option>";
		}

		return optionString;
	}

	@GetMapping("/getAllTopic/{chapterId}")
	@ResponseBody
	public String getTopicChapterWise(@PathVariable("chapterId") Integer chapterId) {
		Chapter ch = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(ch);

		String topicOption = "<option selected disabled=\"disabled\">Select Topic\r\n"
				+ "										Here</option>";

		for (Topic t : topicList) {
			topicOption += "<option value=" + t.getTopicId() + ">" + t.getTopicName() + "</option>";
		}
		return topicOption;
	}

	@GetMapping("/saveVideo")
	public String getMapping(@RequestParam("topicId") String topicId, @RequestParam("title") String title,
			@RequestParam("url") String url, @RequestParam("description") String description, Model model) {

		Video video = new Video();
		video.setDescription(description);
		video.setTitle(title);
		video.setUrl(url);
		Topic topic = topicService.getSingleTopicById(Integer.valueOf(topicId));
		video.setTopic(topic);

		if (videoService.isSaveVideo(video)) {
			Msg msg = new Msg("video Saved Successfully...!", "text-success");
			model.addAttribute("msg", msg);
			return "NewVideo";
		} else {
			Msg msg = new Msg("Some Problem in video  Saving ....! ", "text-danger");
			model.addAttribute("msg", msg);
			return "NewVideo";
		}

	}

	@GetMapping("/viewVideos")
	public String viewAllVideo(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "ViewVideos";
	}

	@GetMapping("/getAllVideos/{topicId}")
	public String getAllVideos(@PathVariable("topicId") Integer topicId, Model model) {
		Topic topic = topicService.getSingleTopicById(topicId);
		List<Video> videoList = videoService.getAllVideoByTopic(topic);
		model.addAttribute("video", videoList);
		System.out.println(videoList);
		return "VideoAjaxPage";
	}

	@GetMapping("/detailVideo/{videoId}")
	public String getVideoDetail(@PathVariable("videoId") Integer videoId, Model model) {
		Video video = videoService.getVideoById(videoId);
		model.addAttribute("video", video);
		return "VideoDetail";
	}

	@GetMapping("/updateVideo/{videoId}")
	public String updateVideo(@PathVariable("videoId") Integer topicID, Model model) {

		Video v = videoService.getVideoById(topicID);
		model.addAttribute("video", v);
		return "UpdateVideo";
	}

	@GetMapping("/finalVideoUpdate")
	public String finalVideoUpdate(Video video, Model model) {
		System.out.println(video);
		Topic t = topicService.getSingleTopicById(video.getTopic().getTopicId());
		System.out.println(t);

		Video v = videoService.getVideoById(video.getVideoId());
		v.setDescription(video.getDescription());
		v.setTitle(video.getTitle());
		v.setUrl(video.getUrl());
		v.setTopic(t);

		boolean result = videoService.isSaveVideo(v);
		if (result) {
			Msg msg = new Msg("Videos detail Updated...!", "text-success");
			model.addAttribute("msg", msg);
			return "UpdateVideo";
		} else {
			Msg msg = new Msg("Videos detail Updated...!", "text-success");
			model.addAttribute("msg", msg);
			return "UpdateVideo";
		}

	}

	@GetMapping("/deleteVideo/{videoId}")
	public String deleteVideo(@PathVariable("videoId") Integer videoId, Model model) {

		boolean b = videoService.isDeleteVideo(videoId);
		if (b) {
			Msg msg = new Msg("Video Deleted .....!", "text-success");
			model.addAttribute("msg", msg);
			return "ViewVideos";
		} else {
			Msg msg = new Msg("Video Not deleted .....!", "text-danger");
			model.addAttribute("msg", msg);
			return "ViewVideos";

		}

	}

}
