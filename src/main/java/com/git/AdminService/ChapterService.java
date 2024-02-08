package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.git.AdminDao.ChapterRepository;
import com.git.AdminDao.CourseRepository;
import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;

@Service("chapterService")
public class ChapterService {

	@Autowired
	ChapterRepository chapterRepository;
	@Autowired
	CourseRepository courseRepository;

	public boolean isAddChapter(String chapter, int courseId) {
		Chapter ctp = new Chapter();
		ctp.setChapterName(chapter);
		ctp.setCourse(courseRepository.getSpecificCourse(courseId));

		boolean b = chapterRepository.save(ctp) != null;
		return b;
	}

	public List<Chapter> getAllChapter(Course course) {

		return chapterRepository.getAllChapterByCourse(course);
	}

	public Chapter getChapterById(Integer chapterId) {
		return chapterRepository.getChapterById(chapterId);
	}

	public boolean isSaveChapter(Chapter chapter) {
		return chapterRepository.save(chapter) != null ? true : false;
	}

	@Transactional
	public boolean isDelete(Integer chapterId) {
		return chapterRepository.isDeleteChapter(chapterId) != 0 ? true : false;
	}

	public int noOfChapterOfCourse(Course course) {
		return chapterRepository.countByCourse(course);
	}

}
