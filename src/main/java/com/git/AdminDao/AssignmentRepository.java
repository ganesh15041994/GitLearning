package com.git.AdminDao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.git.AdminModel.Assignment;
import com.git.AdminModel.Topic;

@Repository("assignmentRepository")
public interface AssignmentRepository extends JpaRepository<Assignment, Integer> {

	public List<Assignment> getAllAssignmentByTopic(Topic topic);

	@Query("select a from Assignment a where a.assignmentId=:assignmentId")
	public Assignment getAssignmentById(Integer assignmentId);

	@Modifying
	@Query("delete from Assignment  a where a.assignmentId=:assignmentId ")
	public int isDeleteAssignment(Integer assignmentId);
	
	
	@Query("SELECT COUNT(*) FROM Assignment a where a.topic.chapter.course.id=:id")
	public int countTotalAssignmentByCourse(Integer id);

}
