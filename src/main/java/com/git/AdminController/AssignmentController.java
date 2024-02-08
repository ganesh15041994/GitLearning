package com.git.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.git.AdminModel.Assignment;
import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminModel.Topic;
import com.git.AdminService.AssignmentService;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.AdminService.TopicService;
import com.git.AdminService.VideoService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class AssignmentController {

	@Autowired
	AssignmentService assignmentService;
	@Autowired
	TopicService topicService;
	@Autowired
	ChapterService chapterService;
	@Autowired
	CourseService courseService;
	@Autowired
	VideoService videoService;

	@GetMapping("/newAssignment")
	public String newAssignment(Model model) {
		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "NewAssignment";
	}

	@GetMapping("/topicChapterWise/{chapterId}")
	public String showAllTopic(@PathVariable("chapterId") Integer chapterId, Model model) {
		Chapter chapter = chapterService.getChapterById(chapterId);
		List<Topic> topicList = topicService.getAllTopicByChapter(chapter);
		model.addAttribute("topic", topicList);
		return "AssignmentAjaxPage";
	}

	@GetMapping("/addSingleAssignment/{topicId}")
	public String addSingleAssignment(@PathVariable("topicId") Integer topicId, Model model) {

		model.addAttribute("topicId", topicId);
		return "AddSingleAssignment";
	}

	@GetMapping("/saveAssignment")
	public String saveAssignment(Assignment assignment, Model m) {
		Topic topic = topicService.getSingleTopicById(assignment.getTopic().getTopicId());
		// System.out.println("Topic is "+topic);
		// System.out.println(assignment);
		assignment.setTopic(topic);

		boolean result = assignmentService.isSaveAssignment(assignment);
		if (result) {
			System.out.println("Assignmnet Saved Successfully ");
		} else {
			System.out.println("Something Went wrong ");
		}

		if (result) {
			Msg msg = new Msg("Assignment Added Successfully ....!", "text-success");
			m.addAttribute("msg", msg);
			m.addAttribute("topicId", topic.getTopicId());
			return "AddSingleAssignment";
		} else {
			Msg msg = new Msg("Something went wrong ....!", "text-danger");
			m.addAttribute("msg", msg);
			m.addAttribute("topicId", topic.getTopicId());
			return "AddSingleAssignment";
		}

	}

	@GetMapping("/viewAssignment")
	public String viewAllAssignment(Model model) {

		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "ViewAssignment";
	}

	@GetMapping("/getAllAssignment/{topicId}")
	public String getAssignmentTopicWise(@PathVariable("topicId") Integer topicId, Model model) {
		Topic topic = topicService.getSingleTopicById(topicId);
		List<Assignment> assignmentList = assignmentService.getAllAssignment(topic);
		model.addAttribute("assignment", assignmentList);
		System.out.println(assignmentList);
		return "ToipcWiseAssignment";
	}

	@GetMapping("/detailAssignment/{assignmentId}")
	public String getDetailedAssignment(@PathVariable("assignmentId") Integer assignmentId, Model model) {

		Assignment assignment = assignmentService.findById(assignmentId);
		model.addAttribute("assignment", assignment);
		return "AssignmentDetail";
	}

	@GetMapping("/updateAssignment/{assignmentId}")
	public String updateAssignment(@PathVariable("assignmentId") Integer assignmentId, Model model) {

		Assignment assignment = assignmentService.findById(assignmentId);
		model.addAttribute("assignment", assignment);
		return "UpdateAssignment";
	}

	@GetMapping("/finalAssignmentUpate")
	public String finalAssignmentUpdate(@RequestParam("topicId") String topicId, Assignment assignment, Model model) {

		Assignment assign = assignmentService.findById(assignment.getAssignmentId());

		if (assign != null) {
			assign.setDescription(assignment.getDescription());
			assign.setQuestion(assignment.getQuestion());
			assign.setType(assignment.getType());
			Topic topic = topicService.getSingleTopicById(Integer.valueOf(topicId));
			assign.setTopic(topic);
			assignmentService.isSaveAssignment(assign);

			Msg msg = new Msg("Assignment Updated Successfully", "text-success");
			model.addAttribute("msg", msg);
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			return "ViewAssignment";
		} else {

			Msg msg = new Msg("Assignment Not  Updated ....", "text-danger");
			model.addAttribute("msg", msg);
			return "UpdateAssignment";

		}
	}

	@GetMapping("/deleteAssignment/{assignmentId}")
	public String deleteAssignemnt(@PathVariable("assignmentId") Integer assignmentId, Model model) {

		if (assignmentService.deleteAssignment(assignmentId)) {
			Msg msg = new Msg("Assignment Deleted ", "text-success");
			model.addAttribute("msg", msg);
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			return "ViewAssignment";
		} else {

			Msg msg = new Msg("Assignment Deleted ", "text-success");
			model.addAttribute("msg", msg);
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			return "ViewAssignment";

		}
	}
}
