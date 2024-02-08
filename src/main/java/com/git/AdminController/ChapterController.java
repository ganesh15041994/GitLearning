package com.git.AdminController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;
import com.git.AdminService.ChapterService;
import com.git.AdminService.CourseService;
import com.git.helper.Msg;

@Controller
@RequestMapping("/admin")
public class ChapterController {

	@Autowired
	CourseService courseService;

	@Autowired
	ChapterService chapterService;

	@GetMapping("/newChapter")
	public String newChapter(Model model) {
		List<Course> clist = courseService.getAllCourses();
		model.addAttribute("course", clist);
		return "NewChapter";
	}

	@PostMapping("/saveChapter")
	public String saveChapter(@RequestParam("chapter") MultipartFile file, @RequestParam("courseId") String courseId,
			Model model) throws IOException {

		System.out.println(file.getOriginalFilename());
		boolean b = false;
		BufferedReader bf = new BufferedReader(new InputStreamReader(file.getInputStream()));
		try {
			while (bf.readLine() != null) {
				String chap = bf.readLine();

				b = chapterService.isAddChapter(chap, Integer.valueOf(courseId));

			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(courseId);
		if (b) {
			Msg msg = new Msg("Chapter Added .....!", "text-success");
			model.addAttribute("msg", msg);
			return "NewChapter";
		} else {

			Msg msg = new Msg("Something went wrong ...!", "text-danger");
			model.addAttribute("msg", msg);
			return "NewChapter";
		}

	}

	@GetMapping("/viewChapter")
	public String viewAllChapter(Model model) {
		List<Course> clist = courseService.getAllCourses();
		model.addAttribute("course", clist);
		return "CourseWiseChapter";
	}

	@GetMapping("/viewAllChapter/{id}")
	public String getCourseWiseChapter(@PathVariable("id") Integer courseId, Model m) {

		Course c = new Course();
		c.setId(courseId);
		List<Chapter> list = chapterService.getAllChapter(c);
		System.out.println(list);

		m.addAttribute("chapter", list);
		return "ChapterList";
	}

	@GetMapping("/detailChapter/{chapterId}")
	public String chapterDetails(@PathVariable("chapterId") Integer chpaterId, Model model) {

		Chapter c = new Chapter();
		c = chapterService.getChapterById(chpaterId);
		model.addAttribute("chapter", c);
		return "DetailChapter";
	}

	@GetMapping("/updateCahpter/{chapterId}")
	public String updateChapter(@PathVariable("chapterId") Integer chapterId, Model model) {
		Chapter c = chapterService.getChapterById(chapterId);
		model.addAttribute("chapter", c);
		return "UpdateChapter";
	}

	@GetMapping("/chapterFinalUpdate")
	public String finalUpdateChapter(Chapter chapter, Model model) {
		Chapter c = chapterService.getChapterById(chapter.getChapterId());
		System.out.println("Chapter Which COming FRom database" + c);
		if (c != null) {
			c.setChapterId(chapter.getChapterId());
			c.setChapterName(chapter.getChapterName());

			boolean b = chapterService.isSaveChapter(c);
			if (b) {

				Msg msg = new Msg("Chapter Updated Succesfully", "text-success");
				model.addAttribute("msg", msg);

				return "UpdateChapter";
			} else {
				Msg msg = new Msg("Chapter Not Updated", "text-danger");
				model.addAttribute("msg", msg);
				return "UpdateChapter";
			}

		} else {

			Msg msg = new Msg("Chapter  Not Updated", "text-danger");
			model.addAttribute("msg", msg);
			return "UpdateChapter";
		}
	}

	@GetMapping("/deleteChapter/{chapterId}")
	public String deleteChapter(@PathVariable("chapterId") Integer chapterId) {
		if (chapterService.isDelete(chapterId)) {

			return "";
		} else {
			System.out.println("some Problem is There ....");
			return "";
		}

	}

}
