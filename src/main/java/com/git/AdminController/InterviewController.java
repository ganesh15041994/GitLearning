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
import org.springframework.web.servlet.view.RedirectView;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminModel.InterviewQuestion;
import com.git.AdminModel.Topic;
import com.git.AdminService.AssignmentService;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.AdminService.InterviewQuestionService;
import com.git.AdminService.TopicService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class InterviewController {

	@Autowired
	CourseService courseService;

	@Autowired
	AssignmentService assignmentService;

	@Autowired
	TopicService topicService;
	@Autowired
	ChapterService chapterService;

	@Autowired
	InterviewQuestionService interviewQuestionService;

	@GetMapping("/newInterviewQuestion")
	public String newInterviewQuestion(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "NewInterviewQuestion";
	}

	@GetMapping("/chapterWiseTopic/{chapterId}")
	public String getChapterWiseTopic(@PathVariable("chapterId") Integer chapterId, Model model) {
		Chapter chapter = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(chapter);
		model.addAttribute("topic", topicList);
		return "InterviewQuestionAjaxPage";
	}

	@GetMapping("/addSingleInterviewQuestion/{topicId}")
	public String addSingleTopic(@PathVariable("topicId") Integer topicId, Model model, HttpServletRequest request) {
		Topic topic = topicService.getSingleTopicById(topicId);
		model.addAttribute("topic", topic);
		HttpSession session = request.getSession();
		Msg msg = (Msg) session.getAttribute("msg");
		model.addAttribute("msg", msg);
		return "AddSingleInterview";
	}

	@PostMapping("/saveInterviewQuestion")
	public RedirectView saveInterviewQuestion(InterviewQuestion interviewQuestion, Model model,
			HttpServletRequest request) {

		Topic topic = topicService.getSingleTopicById(interviewQuestion.getTopic().getTopicId());
		// System.out.println(topic);
		// System.out.println(interviewQuestion);
		interviewQuestion.setTopic(topic);

		boolean b = interviewQuestionService.isAddInterviewQuestion(interviewQuestion);

		if (b) {

			HttpSession session = request.getSession();
			Msg msg = new Msg("New Interview Question Added....!", "text-success");
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/addSingleInterviewQuestion/" + interviewQuestion.getTopic().getTopicId());
			return view;

		}

		else {
			HttpSession session = request.getSession();
			Msg msg = new Msg("Something went wrong....", "text-danger");
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/addSingleInterviewQuestion/" + interviewQuestion.getTopic().getTopicId());
			return view;
		}

	}

	@GetMapping("/viewInterviewQuestion")
	public String viewAllInterviewQuestion(Model model) {
		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "ViewInterviewQuestion";
	}

	@GetMapping("/viewAllTopicAjax/{chapterId}")
	public String viewAllTopicAjax(@PathVariable("chapterId") Integer chapterId, Model model) {

		Chapter chapter = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(chapter);
		model.addAttribute("topic", topicList);
		return "InterviewTopicAjax";
	}

	@GetMapping("/viewAllInterviewQuestionByTopic/{topicId}")
	public String getAllInterviewQuestionByTopic(@PathVariable("topicId") Integer topicId, Model model,
			HttpServletRequest request) {

		Topic topic = topicService.getSingleTopicById(topicId);
		List<InterviewQuestion> interviewQuestionList = interviewQuestionService.getAllInterviewQuestionByTopic(topic);
		// System.out.println(interviewQuestionList);

		model.addAttribute("question", interviewQuestionList);
		HttpSession session = request.getSession();
		Msg msg = (Msg) session.getAttribute("msg");
		model.addAttribute("msg", msg);
		return "ViewAllInterviewQuestion";
	}

	@GetMapping("/detaiedInterviewQuestion/{interviewQuestionId}")
	public String getDetailedInterviewQuestion(@PathVariable("interviewQuestionId") Integer interviewQuestionId,
			Model model) {
		InterviewQuestion interviewQuestion = interviewQuestionService.getInterviewQuestionById(interviewQuestionId);
		model.addAttribute("question", interviewQuestion);
		// System.out.println(interviewQuestion);
		return "DetaiedInterviewQuestion";
	}

	@GetMapping("/updateInterviewQuestion/{interviewQuestionId}")
	public String updateInterviewQuestion(@PathVariable("interviewQuestionId") Integer interviewQuestionId,
			Model model) {
		// System.out.println(interviewQuestionId);
		InterviewQuestion interviewQuestion = interviewQuestionService.getInterviewQuestionById(interviewQuestionId);
		model.addAttribute("question", interviewQuestion);
		return "UpdateInterviewQuestion";
	}

	@GetMapping("/finalInterviewUpdate")
	public RedirectView finalInterviewQuestionUpdate(InterviewQuestion interview, HttpServletRequest request) {
		RedirectView redirectView = new RedirectView();
		// System.out.println("object from form "+interview);
		InterviewQuestion interviewQuestion = interviewQuestionService
				.getInterviewQuestionById(interview.getInterviewQuestionId());
		// System.err.println(interviewQuestion);

		if (interviewQuestion != null) {
			interviewQuestion.setDescription(interview.getDescription());
			interviewQuestion.setQuestion(interview.getQuestion());
			Topic topic = topicService.getSingleTopicById(interview.getTopic().getTopicId());
			interviewQuestion.setTopic(topic);

			interviewQuestionService.isAddInterviewQuestion(interviewQuestion);
			HttpSession session = request.getSession();
			Msg msg = new Msg("Interview Question Updated Successfully", "text-success");
			session.setAttribute("msg", msg);
			redirectView.setUrl("/admin/viewAllInterviewQuestionByTopic/" + interview.getTopic().getTopicId());
			return redirectView;

		} else {
			HttpSession session = request.getSession();
			Msg msg = new Msg("Interview Question Not  Updated.....", "text-danger");
			session.setAttribute("msg", msg);
			redirectView.setUrl("/viewAllInterviewQuestionByTopic/" + interview.getTopic().getTopicId());
			return redirectView;
		}
	}

	@GetMapping("/deleteInterviewQuestion/{interviewQuestionId}")
	public RedirectView deleteInterviewQuestion(@PathVariable("interviewQuestionId") Integer interviewQuestionId,
			HttpServletRequest request) {
		InterviewQuestion interviewQuestion = interviewQuestionService.getInterviewQuestionById(interviewQuestionId);

		boolean result = interviewQuestionService.isDeleteInterviewQuestion(interviewQuestionId);
		if (result) {
			HttpSession session = request.getSession();
			Msg msg = new Msg("Interview Question Deleted....", "text-success");
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/viewAllInterviewQuestionByTopic/" + interviewQuestion.getTopic().getTopicId());
			return view;
		} else {
			HttpSession session = request.getSession();
			Msg msg = new Msg("Interview Question Not Deleted....", "text-danger");
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/viewAllInterviewQuestionByTopic/" + interviewQuestion.getTopic().getTopicId());
			return view;
		}
	}

}
