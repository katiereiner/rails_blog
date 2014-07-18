$(document).ready(function() {
	$("#signup").hide();
	$("#signin").hide();

	$("#signup_button").on("click", function(e) {
		e.preventDefault();
		$("#signup").slideToggle( "slow", function() {
		});
	}); 

	$("#signin_button").on("click", function(e) {
		e.preventDefault();
		$("#signin").slideToggle("slow", function(e){
		});
	}); 

	$("#add_comments").on("ajax:success", function(e, data, status, xhr) {
		$("#comments").append(xhr.responseText);

	}).on("ajax:error", function(e, xhr, status, error) {
		$("#comments").append("<p>ERROR</p>");
	});
});