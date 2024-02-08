<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.min.js"></script>
<table class="display" id="myTable">
	<thead>
		<tr>

			<th scope="col">Topic Id</th>
			<th scope="col">Topic Name</th>
			<th scope="col">View All Interview Question</th>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="t" items="${topic}">
			<tr>
				<td>${t.topicId}</td>
				<td>${t.topicName}</td>
				<td><a
					href="${pageContext.request.contextPath }/admin/viewAllInterviewQuestionByTopic/${t.topicId}">View
						All Interview Question</a></td>
			</tr>
		</c:forEach>

	</tbody>
</table>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {
		$('#myTable').DataTable({
			"pageLength" : 10,
			"searching" : true,
			"order" : [ [ 0, "asc" ] ]
		});
	});
</script>
</body>