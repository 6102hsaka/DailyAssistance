$(document).ready(function(){
	
	$("#hide").hide();
	
	
	var emptyId = false;
	var emptyPass = false;
	
	function isIdEmpty() {
		var uid = $("#uid").val();
		if(uid.length=='') {
			emptyId = true;
			$("#iderr").show();
			$("#iderr").html("** user Id can't be empty");
		} else {
			emptyId = false;
			$("#iderr").hide();
		}
		
	}
	
	function isPassEmpty() {
		var pass = $("#pass").val();
		if(pass.length <6 || pass.length > 20) {
			emptyPass = true;
			$("#passerr").show();
			$("#passerr").html("** password should contain 6-20 character only");
		} else {
			emptyPass = false;
			$("#passerr").hide();
		}
	}
	
	$("#uid").keyup(function(){
		isIdEmpty();
	});
	$("#uid").focusout(function(){
		isIdEmpty();
	});
	
	$("#pass").keyup(function(){
		isPassEmpty();
	});
	$("#pass").focusout(function(){
		isPassEmpty();
	});
	
	
	$("#login").click(function(){
		isIdEmpty();
		isPassEmpty();
		return (!emptyId && !emptyPass);
	});
	
	$("#show").click(function() {
		$("#show").hide();
		$("#hide").show();
		$("#pass").prop('type','text');
		
	});
	
	$("#hide").click(function() {
		$("#hide").hide();
		$("#show").show();
		$("#pass").prop('type','password');
	});
	
});
