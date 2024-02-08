package com.git.AdminDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.git.AdminModel.PracticeTest;
import com.git.AdminModel.Topic;

@Repository("practiceTestRepository")
public interface PracticeTestRepository extends JpaRepository<PracticeTest, Integer> {
	
	public List<PracticeTest> getPracticeTestByTopic(Topic topic);
	
	@Query("select p from PracticeTest p where p.practiceTestId=:pr")
	public PracticeTest getPracticeQuestionById (Integer pr);
	
	@Modifying
	@Query("delete  from PracticeTest p  where p.practiceTestId=:ptId")
	public int isDeletePracticeQuestion(Integer ptId);
	
	
	@Query("SELECT COUNT(*) from PracticeTest p where p.topic.chapter.course.id=:id")
	public int totalPracticeTestQuestionByCourse(Integer id);

}
