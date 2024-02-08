package com.git.AdminService;

import java.util.List;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.git.AdminDao.AssignmentRepository;
import com.git.AdminModel.Assignment;
import com.git.AdminModel.Topic;

@Service("assignmentService")
public class AssignmentService {

	@Autowired
	AssignmentRepository assignmentRepository;

	public boolean isSaveAssignment(Assignment assignment) {
		Assignment assignment2 = assignmentRepository.save(assignment);
		return assignment2 != null ? true : false;
	}

	public List<Assignment> getAllAssignment(Topic topic) {
		return assignmentRepository.getAllAssignmentByTopic(topic);
	}

	public Assignment findById(Integer assignmentId) {
		return assignmentRepository.getAssignmentById(assignmentId);
	}

	@Transactional
	public boolean deleteAssignment(Integer assignmentId) {
		return assignmentRepository.isDeleteAssignment(assignmentId) == 1 ? true : false;

	}

	public int totalAssignmentByCourse(Integer courseId) {
		return assignmentRepository.countTotalAssignmentByCourse(courseId);
	}
}
