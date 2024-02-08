package com.git.AdminController;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminModel.PracticeTest;
import com.git.AdminModel.Topic;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.AdminService.PracticeTestService;
import com.git.AdminService.TopicService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class PracticeQuestionController {

	@Autowired
	PracticeTestService practiceTestService;
	@Autowired
	TopicService topicService;
	@Autowired
	CourseService courseService;
	@Autowired
	ChapterService chapterService;

	@GetMapping("/newPracticeTest")
	public String newPracticeTest(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "NewPracticeTest";
	}

	@GetMapping("/getAllTopics/{chapterId}")
	@ResponseBody
	public String getAllTopicByChapter(@PathVariable("chapterId") Integer chapterId) {
		Chapter chapter = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(chapter);
		System.out.println(topicList);

		String tabledata = "<table id='myTable' class='table table-bordered table-striped example1'>"
				+ "<thead><tr><th>Topic Id</th><th>Topic Name</th>"
				+ "<th>Add Bulk Practice Question</th><th>Add Single Practice Question</th>" + "</tr></thead><tbody>";
		for (Topic topic : topicList) {
			tabledata += "<tr>" + "<td>" + topic.getTopicId() + "</td><td>" + topic.getTopicName()
					+ "</td><td><a href=''>Add Bulk Practice Question</a></td><td><a href='addSingleTest/"
					+ topic.getTopicId() + "'>Add Single Practice Question</a></td>"

					+ "</tr>";

		}
		return tabledata;
	}

	@GetMapping("/addSingleTest/{topicId}")
	public String addSinglePracticeTest(@PathVariable("topicId") Integer topicId, Model model,
			HttpServletRequest request) {
		Topic topic = topicService.getSingleTopicById(topicId);
		model.addAttribute("topic", topic);
		HttpSession session = request.getSession();
		Msg msg = (Msg) session.getAttribute("msg");
		model.addAttribute("msg", msg);
		return "AddSinglePracticeTest";
	}

	@GetMapping("/saveSinglePracticeQuestion")
	public RedirectView saveSinglePracticeTestQuestion(PracticeTest practiceTest, HttpServletRequest request) {
		// System.out.println(practiceTest.toString());

		Topic topic = topicService.getSingleTopicById(practiceTest.getTopic().getTopicId());
		practiceTest.setTopic(topic);

		if (practiceTestService.isSavePracticeTestQuestion(practiceTest)) {
			RedirectView view = new RedirectView("addSingleTest/" + 1);
			HttpSession session = request.getSession();
			Msg msg = new Msg("Practice Question Added successfully", "text-success");
			session.setAttribute("msg", msg);
			view.setUrl("addSingleTest/" + 1);
			return view;
		} else {
			RedirectView view = new RedirectView("addSingleTest/" + 1);
			HttpSession session = request.getSession();
			Msg msg = new Msg("Practice Question not Added....!", "text-danger");
			session.setAttribute("msg", msg);
			view.setUrl("addSingleTest/" + 1);
			// System.out.println(practiceTest);
			return view;
		}
	}

	@GetMapping("/viewPracticeTestQuestion")
	public String viewPracticeTestQuestion(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "ViewPracticeTestQuestion";
	}

	@GetMapping("/practiceQuestionAjax/{chapterId}")
	public String getPracticeTopicAjax(@PathVariable("chapterId") Integer chapterId, Model model) {
		Chapter chapter = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(chapter);
		model.addAttribute("topic", topicList);
		return "PracticeQuestionAjaxPage";
	}

	@GetMapping("/viewAllPracticeTestQuestion/{topicId}")
	public String viewAllPracticeQuestion(@PathVariable("topicId") Integer topicId, Model model) {
		Topic topic = topicService.getSingleTopicById(topicId);
		List<PracticeTest> prList = practiceTestService.getPracriceTestQuestionByTopic(topic);
		model.addAttribute("pr", prList);
		System.out.println(prList);
		return "ViewAllPracticeTestQuestion";
	}

	@GetMapping("/detailPracticeQuestion/{practiceTestId}")
	public String getAllDetailPracticeQuestion(@PathVariable("practiceTestId") Integer pr, Model model) {
		PracticeTest pTest = practiceTestService.getPracticeQuestionById(pr);
		model.addAttribute("p", pTest);
		return "PracticeTestQuestionDetails";
	}

	@GetMapping("/updatePracticeTestQuestion/{practiceTestId}")
	public String updatePracticeTestQuestion(@PathVariable("practiceTestId") Integer practiceTestId, Model model) {

		PracticeTest practiceTest = practiceTestService.getPracticeQuestionById(practiceTestId);
		model.addAttribute("p", practiceTest);
		return "UpdatePracticeTestQuestion";
	}

	@PostMapping("/finalUpdatePracticeTest")
	public RedirectView finalUpdatePracticeTestQuestion(PracticeTest practiceTest, HttpServletRequest request) {

		Topic topic = topicService.getSingleTopicById(practiceTest.getTopic().getTopicId());
		System.out.println(practiceTest);
		practiceTest.setTopic(topic);
		if (practiceTestService.isUpdate(practiceTest)) {
			RedirectView view = new RedirectView();
			HttpSession session = request.getSession();
			Msg msg = new Msg("Updated Succsessfully ....!", "text-success");
			session.setAttribute("msg", msg);
			view.setUrl("/updatePracticeTestQuestion/" + practiceTest.getPracticeTestId());
			return view;
		} else {

			RedirectView view = new RedirectView();
			HttpSession session = request.getSession();
			Msg msg = new Msg("Not Updated ....!", "text-danger");
			session.setAttribute("msg", msg);
			view.setUrl("/updatePracticeTestQuestion/" + practiceTest.getPracticeTestId());
			return view;
		}
	}

	@GetMapping("/deletePracticeTest/{practiceTestId}")
	public String isDeletePracticeTestById(@PathVariable("practiceTestId") Integer practiceTestId, Model model) {

		if (practiceTestService.isDeletePracticeTestQuestion(practiceTestId)) {
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			Msg msg = new Msg("Practice Question Deleted ....!", "text-danger");
			model.addAttribute("msg", msg);
			return "ViewPracticeTestQuestion";
		} else {
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			Msg msg = new Msg("Practice Question  Not Deleted ....!", "text-info");
			model.addAttribute("msg", msg);
			return "ViewPracticeTestQuestion";

		}

	}

}
