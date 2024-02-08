package com.git.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import com.git.AdminModel.AdminLogin;
import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminModel.FacultyProfile;
import com.git.AdminService.AdminService;
import com.git.AdminService.AssignmentService;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.AdminService.FacultyService;
import com.git.AdminService.InterviewQuestionService;
import com.git.AdminService.PracticeTestService;
import com.git.AdminService.TopicService;
import com.git.AdminService.VideoService;
import com.git.security.model.User;
import com.git.security.repo.UserDao;

@Controller
public class HomePageController {

	@Autowired
	AdminService adminService;

	@Autowired
	CourseService courseService;

	@Autowired
	ChapterService chapterService;
	@Autowired
	TopicService topicService;
	@Autowired
	VideoService videoService;

	@Autowired
	UserDao userDao;

	@Autowired
	InterviewQuestionService interviewQuestionService;

	@Autowired
	AssignmentService assignmentService;

	@Autowired
	PracticeTestService practiceTestService;

	@Autowired
	FacultyService facultyService;

	@ModelAttribute
	public void commanUser(Principal p, Model model) {

		if (p != null) {
			String email = p.getName();
			User user = userDao.findByEmail(email);
			model.addAttribute("user", user);
		}

	}

	@GetMapping("/")
	public String getHomePage(Model model) {

		List<Course> clist = courseService.getAllCourses();
		model.addAttribute("c", clist);
		return "home";
	}

	@GetMapping("/adminlogin")

	public String adminLogin(HttpSession session) {
		session.invalidate();
		return "AdminLogin";
	}

	// ============================Home Page Contollers=============================

	@GetMapping("/knowMore/{id}")
	public String viewAllDetailsOfCourse(@PathVariable("id") Integer id, Model model) {
		Course course = courseService.getSpecificCourse(id);
		model.addAttribute("course", course);
		// int chapter = chapterService.noOfChapterOfCourse(course);
		// System.out.println("No of Chapter is" + chapter);

		int totalVideo = videoService.getNoOfVideoOfCourse(id);
		// System.out.println("total Video IS " + totalVideo);

		int totolInterviewQuestion = interviewQuestionService.noOfInterviewQuestion(id);
		model.addAttribute("totalInterviewQuestion", totolInterviewQuestion);

		int totalAssignment = assignmentService.totalAssignmentByCourse(id);
		model.addAttribute("totalAssignment", totalAssignment);

		model.addAttribute("totalLecture", totalVideo);

		int totalPracticeTestQuestion = practiceTestService.getAllPracticeQuestionByCourse(id);
		model.addAttribute("pr", totalPracticeTestQuestion);
		String url = "9uErBKsWWz8?si=z5tWVMQIayrtiRl3";
		model.addAttribute("url", url);

		List<Chapter> chapterList = chapterService.getAllChapter(course);
		model.addAttribute("chapter", chapterList);

		FacultyProfile facultyProfile = facultyService.getProfileByCourse(course);
		model.addAttribute("faculty", facultyProfile);

		return "KnowMore";
	}

}
