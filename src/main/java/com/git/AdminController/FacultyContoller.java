package com.git.AdminController;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.git.AdminModel.Course;
import com.git.AdminModel.FacultyProfile;
import com.git.AdminService.CourseService;
import com.git.AdminService.FacultyService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class FacultyContoller {

	
	@Autowired
	FacultyService facultyService;

	@Autowired
	CourseService courseService;

	@GetMapping("/newFaculty")
	public String newFaculty(Model model) {
		List<Course> courseList = courseService.getAllCourses();
		model.addAttribute("course", courseList);
		return "NewFaculty";
	}

	@PostMapping("/saveFaculty")
	public String saveFacultyProfile(FacultyProfile facultyProfile,
			@RequestParam("facultyImage") MultipartFile multipartFile, HttpSession session, Model model) {

		Msg msg;
		if (!multipartFile.isEmpty()) {
			facultyProfile.setFacultyPhoto(multipartFile.getOriginalFilename());
			Course course = courseService.getSpecificCourse(facultyProfile.getCourse().getId());
			facultyProfile.setCourse(course);
			ServletContext context = session.getServletContext();
			String path = context.getRealPath("/");
			String uploadpath = "/Faculty/";
			File dir = new File(uploadpath);

			if (!dir.exists()) {
				dir.mkdir();
			}
			boolean isInserted = false;
			String filePath = path + uploadpath + multipartFile.getOriginalFilename();
			try {
				multipartFile.transferTo(new File(filePath));
				isInserted = facultyService.isSaveFacultyProfile(facultyProfile);

				if (isInserted) {
					List<Course> courseList = courseService.getAllCourses();
					model.addAttribute("course", courseList);
					msg = new Msg("Faculty Profile Saved ....", "text-success");
					model.addAttribute("msg", msg);
					return "NewFaculty";
				} else {
					List<Course> courseList = courseService.getAllCourses();
					model.addAttribute("course", courseList);
					msg = new Msg("Faculty Profile Not  Saved ....", "text-danger");
					model.addAttribute("msg", msg);
					return "NewFaculty";
				}
			} catch (IllegalStateException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				List<Course> courseList = courseService.getAllCourses();
				model.addAttribute("course", courseList);
				msg = new Msg("Faculty Profile Not  Saved ....", "text-danger");
				model.addAttribute("msg", msg);
				return "NewFaculty";
			}
		}

		else {
			List<Course> courseList = courseService.getAllCourses();
			model.addAttribute("course", courseList);
			msg = new Msg("Faculty Profile Not  Saved ....", "text-danger");
			model.addAttribute("msg", msg);
			return "NewFaculty";
		}

	}

	@GetMapping("/viewFacultyProfile")
	public String viewFacultyProfile(Model model, HttpServletRequest request) {
		List<FacultyProfile> facultyProfileList = facultyService.getAllFaculyDetails();
		System.out.println(facultyProfileList);
		HttpSession session = request.getSession();
		Msg msg = (Msg) session.getAttribute("msg");
		model.addAttribute("msg", msg);
		model.addAttribute("faculty", facultyProfileList);
		return "ViewFacultyProfile";
	}

	@GetMapping("/profileDetail/{profileId}")
	public String detailedFacultyProfile(@PathVariable("profileId") Integer profileId, Model model) {

		FacultyProfile facultyProfile = facultyService.getFacultyProfileById(profileId);
		model.addAttribute("f", facultyProfile);
		return "FacultyProfileDetail";
	}

	@GetMapping("/updateProfile/{profileId}")
	public String UpdateFacultyProfile(@PathVariable("profileId") Integer profileId, Model model) {
		FacultyProfile facultyProfile = facultyService.getFacultyProfileById(profileId);
		model.addAttribute("f", facultyProfile);
		List<Course> cList = courseService.getAllCourses();
		model.addAttribute("course", cList);
		return "UpdateProfile";
	}

	@PostMapping("/finalFacultyProfileUpdate")
	public RedirectView finalUpdateFacultyProfile(FacultyProfile facultyProfile,
			@RequestParam("newFacultyImage") MultipartFile newImage, Model model, HttpServletRequest request) {

		System.out.println(newImage.getOriginalFilename());

		FacultyProfile fp = facultyService.getFacultyProfileById(facultyProfile.getFacultyId());

		if (!newImage.isEmpty()) {
			facultyProfile.setFacultyPhoto(newImage.getOriginalFilename());
		}

		fp.setDesignation(facultyProfile.getDesignation());
		fp.setExperience(facultyProfile.getExperience());
		fp.setFacultyName(facultyProfile.getFacultyName());
		fp.setQualification(facultyProfile.getQualification());
		fp.setSkillset(facultyProfile.getSkillset());
		Course course = courseService.getSpecificCourse(facultyProfile.getCourse().getId());
		fp.setCourse(course);

		if (facultyService.isSaveFacultyProfile(fp)) {
			Msg msg = new Msg("Profile Updated Successfully", "text-success");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/viewFacultyProfile");
			return view;
		} else {
			Msg msg = new Msg("Profile Not  Updated ....", "text-danger");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/viewFacultyProfile");
			return view;
		}

	}

	@GetMapping("/deleteProfile/{facultyId}")
	public RedirectView isDeleteProfile(@PathVariable("facultyId") Integer facultyId, HttpServletRequest request) {
		if (facultyService.isDelete(facultyId)) {
			Msg msg = new Msg("Profile Updated Successfully", "text-success");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/viewFacultyProfile");
			return view;
		} else {
			Msg msg = new Msg("Profile Not  Updated ....", "text-danger");
			HttpSession session = request.getSession();
			session.setAttribute("msg", msg);
			RedirectView view = new RedirectView();
			view.setUrl("/viewFacultyProfile");
			return view;
		}
	}
	
	

}
