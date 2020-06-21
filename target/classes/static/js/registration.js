$(document).ready(function(){
	
	var emptyId = false;
	var emptyName = false;
	var emptyPass = false;
	var passMatching = false;
	
	var validId = true;
	var validPass = true;
	
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
	
	function isValidId() {
		$.ajax({
			type: 'GET',
			url: '/allIds',
			success: function(result) {
				var uid = $("#uid").val();
				var result = JSON.parse(result);
				var s = '';
				for(var i = 0; i < result.length; i++) {
					if(result[i]==uid) {
						validId = false;
						$("#iderr").show();
						$("#iderr").html("** user Id already exists");
						break;
					} else {
						validId = true;
						$("#iderr").hide();
					}
				}
			}
		});
	}
	
	function isNameEmpty() {
		var uname = $("#uname").val();
		if(uname.length=='') {
			emptyName = true;
			$("#unameerr").show();
			$("#unameerr").html("** user name can't be empty");
		} else {
			emptyName = false;
			$("#unameerr").hide();
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
	
	function isValidPass() {
		var pass = $("#pass").val();
		var ptn = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{6,20}$/;
		if(!pass.match(ptn)) {
			validPass = false;
			$("#passerr").show();
			$("#passerr").html("** password should contain atleast one uppercase, one lowecase and one numeric character");
		} else {
			validPass = true;
			$("#passerr").hide();
		}
		
	}
	
	function isPassMatching() {
		var pass = $("#pass").val();
		var conpass = $("#conpass").val();
		if(conpass != pass) {
			passMatching = false;
			$("#conpasserr").show();
			$("#conpasserr").html("** password not matching");
		} else {
			passMatching = true;
			$("#conpasserr").hide();
		}
	}
	
	$("#uid").keyup(function(){
		isIdEmpty();
		if(!emptyId) {
			isValidId();
		}
		
	});
	$("#uid").focusout(function(){
		isIdEmpty();
		if(!emptyId) {
			isValidId();
		}
	});
	
	$("#uname").keyup(function(){
		isNameEmpty();
	});
	$("#uname").focusout(function(){
		isNameEmpty();
	});
	
	$("#pass").keyup(function(){
		isPassEmpty();
		if(!emptyPass) {
			isValidPass();
		}
	});
	$("#pass").focusout(function(){
		isPassEmpty();
		if(!emptyPass) {
			isValidPass();
		}
	});
	
	$("#conpass").keyup(function(){
		isPassMatching();
	});
	$("#conpass").focusout(function(){
		isPassMatching();
	});
	
	
	$("#register").click(function(){
		isIdEmpty();
		isValidId();
		isNameEmpty();
		isPassEmpty();
		isValidPass()
		isPassMatching();
		return (!emptyId && validId && !emptyName && !emptyPass && validPass && passMatching);
	});
});