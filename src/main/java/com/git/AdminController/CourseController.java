package com.git.AdminController;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.git.AdminModel.Course;
import com.git.AdminService.CourseService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class CourseController {

	@Autowired
	CourseService courseService;
	@Value("${upload.dir}")
	private String uploadDir;

	@GetMapping("/newCourse")
	public String addNewCorse() {

		return "NewCourse";

	}

	@PostMapping("/saveCourse")
	public String saveCourse(Course course, RedirectAttributes attributes,
			@RequestParam("banner") MultipartFile multipartFile, HttpSession httpSession, Model model) {

		ServletContext context = httpSession.getServletContext();
		String path = context.getRealPath("/");

		if (!multipartFile.isEmpty()) {
			try {
				String fileName = multipartFile.getOriginalFilename();
				course.setPath(fileName);
				File dir = new File(uploadDir);
				boolean isInseted = false;
				if (!dir.exists()) {
					dir.mkdir();
				}
				String filePath = path + uploadDir + fileName;
				multipartFile.transferTo(new File(filePath));
				isInseted = courseService.saveCourse(course);

				if (isInseted) {
					Msg message = new Msg();
					message.setMsg("Course Added Successfully.....!");
					message.setType("text-warning");
					model.addAttribute("msg", message);
					return "NewCourse";

				} else {
					Msg message = new Msg();
					message.setMsg("Somthing went wrong.....!");
					message.setType("text-danger");
					model.addAttribute("msg", message);
					return "NewCourse";
				}
			} catch (Exception e) {
				Msg message = new Msg();
				message.setMsg("Somthing went wrong.....!");
				message.setType("text-danger");
				model.addAttribute("msg", message);
				return "NewCourse";
			}
		} else {
			Msg message = new Msg();
			message.setMsg("Somthing went wrong.....!");
			message.setType("text-danger");
			model.addAttribute("msg", message);
			return "NewCourse";

		}

	}

	@GetMapping("/viewAllCourse")
	public String getAllCourse(Model model) {
		List<Course> list = courseService.getAllCourses();
		list.forEach(c -> System.out
				.println(c.getId() + "\t" + c.getCourseName() + "\t" + c.getPath() + "\t" + c.getFees()));
		model.addAttribute("course", list);
		return "AllCourses";
	}

	@GetMapping("/SpecificCourseDetail/{id}")
	public String getSpecficCourseDetail(@PathVariable("id") Integer id, Model model) {
		Course c = courseService.getSpecificCourse(id);
		System.out.println(c);
		model.addAttribute("course", c);
		return "SpecificCourseDetail";
	}

	@GetMapping("/updateCourse/{id}")
	public String updateCourse(@PathVariable("id") Integer id, Model model) {

		Course course = courseService.getSpecificCourse(id);
		model.addAttribute("course", course);

		return "updateCourse";

	}

	@PostMapping("/finalUpdate")
	public String finalUpdateCourse(Course course, HttpSession httpSession,
			@RequestParam("banner") MultipartFile multipartFile, Model model) {

		Course c = courseService.getSpecificCourse(course.getId());
		boolean isInserted = false;

		if (c != null) {

			ServletContext context = httpSession.getServletContext();
			String path = context.getRealPath("/");
			c.setCourseName(course.getCourseName());
			c.setFees(course.getFees());
			c.setNoOfHours(course.getNoOfHours());
			c.setObjectives(course.getObjectives());

			c.setPrerequisites(course.getPrerequisites());
			c.setType(course.getType());

			System.out.println(c.getPath());
			System.out.println(multipartFile.getOriginalFilename());

			if (multipartFile.isEmpty()) {
				c.setPath(c.getPath());
				isInserted = true;
			}

			else {
				String fileName = multipartFile.getOriginalFilename();
				c.setPath(fileName);
				if (!multipartFile.isEmpty())

					try {
						String filePath = path + uploadDir + fileName;
						multipartFile.transferTo(new File(filePath));
						isInserted = true;

					} catch (Exception e) {
						System.out.println("Exception is " + e);
					}
			}

		}
		if (isInserted) {
			courseService.saveCourse(c);

			Msg msg = new Msg("Course Updated Successfully....!", "text-success");
			model.addAttribute("msg", msg);
			List<Course> list = courseService.getAllCourses();
			model.addAttribute("course", list);
			return "AllCourses";
		} else {

			Msg msg = new Msg("Course Not Updated Something went wrong ....!", "text-danger");
			model.addAttribute("msg", msg);
			List<Course> list = courseService.getAllCourses();
			model.addAttribute("course", list);
			return "AllCourses";
		}

	}

	@GetMapping("/deleteCourse/{id}")
	public String deleteCourse(@PathVariable("id") Integer id, Model model) {

		boolean b = courseService.isDeleteCourse(id);
		if (b) {
			Msg msg = new Msg("Course Deleted Successfully ", "text-success");
			model.addAttribute("msg", msg);
			List<Course> list = courseService.getAllCourses();
			model.addAttribute("course", list);
			return "AllCourses";
		} else {

			Msg msg = new Msg("Course Not Deleted Something went Wrong ...!", "text-danger");
			model.addAttribute("msg", msg);
			List<Course> list = courseService.getAllCourses();
			model.addAttribute("course", list);
			return "AllCourses";
		}

	}

}
