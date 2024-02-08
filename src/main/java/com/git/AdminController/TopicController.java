package com.git.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminModel.Topic;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.AdminService.TopicService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class TopicController {

	@Autowired
	CourseService courseService;
	@Autowired
	ChapterService chapterService;
	@Autowired
	TopicService topicService;

	@GetMapping("/newTopic")
	public String newTopic(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "NewTopic";

	}

	@GetMapping("/getAllChapterCourseWise/{courseId}")
	public String getChaptersOfCourse(@PathVariable("courseId") Integer courseId, Model model) {
		Course c = new Course();
		c.setId(courseId);
		List<Chapter> chapterList = chapterService.getAllChapter(c);
		System.out.println(chapterList);
		model.addAttribute("chapter", chapterList);
		return "TopicAjaxPage";
	}

	@GetMapping("/addBulkTopic")

	public String addBulkTopic() {
		return "AddBulkTopic";
	}

	@GetMapping("/addSingleTopic/{id}")
	public String addSingleTopic(@PathVariable("id") String chapterId, Model model) {

		model.addAttribute("c", chapterId);
		return "AddSingleTopic";
	}

	@GetMapping("/saveSingleTopic")
	public String saveTopic(@RequestParam("chapterId") String chapterId, @RequestParam("topicName") String topicName,
			Model model) {
		Chapter ch = chapterService.getChapterById(Integer.valueOf(chapterId));
		System.out.println("cha[ter Is "+ch);
		System.out.println(ch);
		Topic topic = new Topic();
		topic.setTopicName(topicName);
		topic.setChapter(ch);

		System.out.println(topic);

		if (topicService.saveSingleTopic(topic)) {
			Msg msg = new Msg("Topic Added Succesfully .....", "text-success");
			model.addAttribute("msg", msg);
			return "AddSingleTopic";
		} else {
			Msg msg = new Msg("Something Went Wrong ....!", "text-danger");
			model.addAttribute("msg", msg);
			return "AddSingleTopic";
		}

	}

	@GetMapping("/viewAllTopics")
	public String viewAllTopics(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		

		return "ViewTopic";
	}

	@GetMapping("/getAllTopicDetails/{chapterId}")
	public String getAllTopicChapterWise(@PathVariable("chapterId") Integer chapterId, Model model) {
		Chapter chapter = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(chapter);
		model.addAttribute("topic", topicList);
		//topicList.forEach(t -> System.out.println(t.getTopicName()));
		return "AllTopic";
	}

	@GetMapping("/detailTopic/{topicId}")
	public String detailTopic(@PathVariable("topicId") Integer topicId, Model model) {
		Topic topic = topicService.getSingleTopicById(topicId);
		model.addAttribute("topic", topic);
		return "TopicDetails";
	}

	@GetMapping("/updateTopic/{topicId}")
	public String updateTopic(@PathVariable("topicId") Integer topicId, Model model) {
		Topic topic = topicService.getSingleTopicById(topicId);
		model.addAttribute("topic", topic);
		return "UpdateTopic";
	}

	@GetMapping("/finalTopicUpdate")
	public String finalUpdateTopic(Topic topic, Model model) {
		// System.out.println(topic);

		Topic t = topicService.getSingleTopicById(topic.getTopicId());

		if (t != null) {
			Chapter chapter = chapterService.getChapterById(topic.getChapter().getChapterId());
			t.setChapter(chapter);
			t.setTopicName(topic.getTopicName());

			boolean b = topicService.saveSingleTopic(t);
			if (b) {
				Msg msg = new Msg("Topic Updated...!", "text-success");
				model.addAttribute("msg", msg);
				return "UpdateTopic";

			} else {
				Msg msg = new Msg("Topic Not Updated...!", "text-danger");
				model.addAttribute("msg", msg);
				return "UpdateTopic";
			}

		}
		Msg msg = new Msg("Topic Not Updated...!", "text-danger");
		model.addAttribute("msg", msg);
		return "UpdateTopic";
	}

	@GetMapping("/deleteTopic/{topicId}")
	public String deleteCourse(@PathVariable("topicId") Integer topicId, Model model) {
		boolean result = topicService.isDeleteTopic(topicId);
		if (result) {
			Msg msg = new Msg("Topic Deleted ....!", "text-success");
			model.addAttribute("msg", msg);
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);

			return "ViewTopic";

		} else {
			Msg msg = new Msg("Topic Not Deleted ....!", "text-danger");
			model.addAttribute("msg", msg);
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			return "ViewTopic";

		}
	}

}
