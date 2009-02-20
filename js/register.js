$(function() {
		// highlight 
		var elements = $("input[type!='submit'], textarea, select");
		elements.focus(function(){
			$(this).parents('li').addClass('highlight');
		});
		elements.blur(function(){
			$(this).parents('li').removeClass('highlight');
		});
		
		$("#register").validate({
		rules: {
			name: "required",
			password: {
				required: true,
				minlength: 8
			},
			confirm_password: {
				required: true,
				minlength: 8,
				equalTo: "#password"
			},
			email: {
				required: true,
				email: true
			},
			agree: "required"
		},
		messages: {
			firstname: "Please enter your name",
			password: {
				required: "Please provide a password",
				minlength: "Your password must be at least 8 characters long"
			},
			confirm_password: {
				required: "Please provide a password",
				minlength: "Your password must be at least 8 characters long",
				equalTo: "Please enter the same password as above"
			},
			email: "Please enter a valid email address",
			agree: "Please accept our policy"
		}
	});
});

