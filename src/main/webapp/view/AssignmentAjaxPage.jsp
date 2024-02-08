<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- DataTables CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <!-- DataTables JS -->
    <script type="text/javascript" src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>

<table id="example" class="display" style="width:100%">
	<thead>
		<tr>

			<th scope="col">TopicId</th>
			<th scope="col">TopicName</th>
			<th scope="col">Add Bulk Assignment</th>
			<th scope="col">Add Single Assignment</th>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="t" items="${topic}">
			<tr>
				<td>${t.topicId}</td>
				<td>${t.topicName}</td>
				<td><a href="${pageContext.request.contextPath}/admin/addSingleAssignment/${t.topicId}">Add Single Assignment</a></td>
				<td>Add Bulk Assignment</td>
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
       
            paging: true // Enable pagination
        });
    });
</script>

</script>
</body>