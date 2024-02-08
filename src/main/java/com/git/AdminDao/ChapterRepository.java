package com.git.AdminDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.git.AdminModel.Chapter;
import com.git.AdminModel.Course;

@Repository("chapterRepository")
public interface ChapterRepository extends JpaRepository<Chapter, Integer> {

	public List<Chapter> getAllChapterByCourse(Course course);

	// @Query("select c from Course c where c.id=:id")

	@Query("select c from Chapter c where c.chapterId=:chapterId")
	public Chapter getChapterById(Integer chapterId);

	@Modifying
	@Query("delete  from Chapter  c where c.chapterId=:chapterId")
	public int isDeleteChapter(Integer chapterId);
	
	public int countByCourse(Course course);
}


