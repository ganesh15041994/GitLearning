
$(function() {
	//alert('Hi');
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

		let chapterId = $('#chapterId').val();
		$.ajax({
			type: 'GET',
			url: '/admin/practiceQuestionAjax/' + chapterId,
			success: function(result) {
				$('#grid').html(result);
			}
		})
	});
});