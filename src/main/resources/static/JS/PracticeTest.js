

$(document).ready(function() {

	$('#courseId').change(function() {
		let courseId = $('#courseId').val();
		//alert(courseId);

		$.ajax({
			type: 'GET',
			url: '/admin/getAllChapter/' + courseId,
			success: function(result) {
				$('#chapterId').html(result);
			}
		})

	});
});


$(function() {
	$('#chapterId').change(function() {
		alert('hi');
		let chapterId = $('#chapterId').val();
		$.ajax({
			type: 'GET',
			url: '/admin/getAllTopics/' + chapterId,
			success: function(result) {
				$('#grid').html(result);
			}
		});
	});

})