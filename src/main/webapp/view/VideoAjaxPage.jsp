<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script
	src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js
"></script>

<table id="example" class="display nowrap" style="width: 100%">
	<thead>
		<tr>

			<th scope="col">Video Id</th>
			<th scope="col">VideoName</th>
			<th scope="col">All Detail</th>

		</tr>
	</thead>
	<tbody>

		<c:forEach var="v" items="${video}">
			<tr>
				<td>${v.videoId}</td>
				<td>${v.title}</td>
				<td><a href="detailVideo/${v.videoId}">View All</a></td>

			</tr>
		</c:forEach>

	</tbody>
</table>

<script src="https://code.jquery.com/jquery-3.7.0.js
"></script>
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js
"></script>
<script src=""></script>

<script>
	new DataTable('#example', {
		ajax : '../data/2500.txt',
		scrollCollapse : true,
		scroller : true,
		scrollY : 200
	});
</script>
</body>
