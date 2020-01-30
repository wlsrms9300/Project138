/*닉네임 중복 체크*/
function nnChk() {
	var _str = $("#nickname").val();
	console.log("aaaaa=>" + _str);
	alert(_str);
	$.ajax({

		url : '/bit_project/nicknameCheck.do',
		type : "post",
		dataType : "json",
		data : {
			nickname : $("#nickname").val()
		},
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',

		success : function(retVal) {
			if (retVal.res == "OK") {
				$(".nicknamecheck-btn").attr("value", "Y");
				alert("사용가능한 닉네임입니다.");
			} else { // 실패했다면
				alert("중복된 닉네임입니다.");
			}
		},
		error : function() {
			alert("ajax통신 실패!!!");
		}

	});
}

/* 마이페이지 닉네임 중복 체크 */
function nnChk_mypage() {
	if($("#nickname").val() == ""){
		alert("닉네임 변경을 원할 경우만 입력후 중복확인을 눌러주세요.");
		return false;
	}
	var _str = $("#nickname").val();
	console.log("aaaaa=>" + _str);
	alert(_str);
	$.ajax({

		url : '/bit_project/nicknameCheck.do',
		type : "post",
		dataType : "json",
		data : {
			nickname : $("#nickname").val()
		},
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',

		success : function(retVal) {
			if (retVal.res == "OK") {
				$(".button1").attr("value", "Y");
				alert("사용가능한 닉네임입니다.");
			} else { // 실패했다면
				alert("중복된 닉네임입니다.");
			}
		},
		error : function() {
			alert("ajax통신 실패!!!");
		}

	});
}

/* 마이페이지 닉네임 업데이트 중복 체크 */
function nn_update_Chk_mypage() {
	if($("#password_before").val() == ""){
		var _str = $("#password_before").val();
		console.log("password_before=>" + _str);
		alert(_str);
		alert("비밀번호를 입력해주세요.");
		return false;
	} else if($("#button1").val() == "N" && $("#nickname").val() != ""){
		var _str = $("#nickname").val();
		console.log("nickname=>" + _str);
		alert(_str);
		alert("중복확인을 눌러주세요.");
		return false;
	}
	
	var memberupdate_nickname = null;
	
	if($("#nickname").val() == ""){
		memberupdate_nickname = $("#nickname_hidden").val();
		alert(memberupdate_nickname);
	} else {
		memberupdate_nickname = $("#nickname").val();
		alert(memberupdate_nickname);
	}
	
	$.ajax({

		url : '/bit_project/nicknameupdateCheck.do',
		type : "post",
		dataType : "json",
		data : {
			img : $("#imageUpload").val(),
			email : $("#email").val(),
			password : $("#password_before").val(),
			nickname : memberupdate_nickname,
			postal_num : $("#postal_num").val(),
			address : $("#address").val(),
			address_detail : $("#address_detail").val(),
			instagram_id : $("#instagram_id").val(),
			children_birth : $("#children_birth").val()
		},
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',

		success : function(retVal) {
			if (retVal.res == "OK") {
				$(".button3").attr("value", "Y");
				alert("수정 완료.");
				var frm = document.getElementById("update_form");
				frm.reset();
				history.go(0);
			} else { // 실패했다면
				alert("수정 실패.");
			}
		},
		error : function() {
			alert("ajax통신 실패!!!");
		}

	});
	
}

/* 마이페이지 기존 비밀번호 체크 */
function pwChk_mypage() {
	var _str = $("#password_before").val();
	var _str_email = $("#email").val();
	console.log("password_before check=>" + _str);
	console.log("email check=>" + _str_email);
	alert(_str);
	alert(_str_email);
	$.ajax({

		url : '/bit_project/passwordCheck.do',
		type : "post",
		dataType : "json",
		data : {
			password : $("#password_before").val(),
			email : $("#email").val()
		},
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',

		success : function(retVal) {
			if (retVal.res == "OK") {
				$(".button2").attr("value", "Y");
				// 페이지 document 로딩 완료 후 스크립트 실행 
					
						status = $(".tr_password").css("display"); 
						if (status == "none") { 
							$(".tr_password").css("display", ""); 
						} else { 
							$(".tr_password").css("display", "none"); 
						} 
					
			
				alert("새로운 비밀번호를 입력해주세요.");
			} else { // 실패했다면
				alert("입력한 비밀번호가 틀렸습니다.");
			}
		},
		error : function() {
			alert("ajax통신 실패!!!");
		}

	});
}

/* 이메일 중복 체크 */
function emChk() {
	var _str1 = $("#email").val();
	console.log("이메일=>" + _str1);
	alert(_str1);
	$.ajax({

		url : '/bit_project/emailCheck.do',
		type : "post",
		dataType : "json",
		data : {
			email : $("#email").val()
		},
		contentType : 'application/x-www-form-urlencoded; charset=utf-8',

		success : function(retVal) {
			if (retVal.res == "OK") {
				$(".emailcheck-btn").attr("value", "Y");
				alert("사용가능한 이메일입니다.");
			} else { // 실패했다면
				alert("중복된 이메일입니다.");
			}
		},
		error : function() {
			alert("ajax통신 실패!!!");
		}

	});
}
/* 비밀번호 일치 체크 */
$(function() {
	$("#alert-true").hide();
	$("#alert-false").hide();
	$("#alert-check").hide();
	$("#password").keyup(function() {
		var pwd1 = $("#password").val();
		var pwd2 = $("#pwcheck").val();

		if (pwd1.length < 8) {
			$("#alert-check").show();
			$("#submit").attr("disabled", "disabled");
		} else {
			$("#alert-check").hide();
			$("#submit").removeAttr("disabled");
		}

		if (pwd1 == "" || pwd2 == "") {
			return false;
		} else if (pwd1 != "" && pwd2 != "") {
			if (pwd1 == pwd2) {
				$("#alert-true").show();
				$("#alert-false").hide();
				$("#submit").removeAttr("disabled");
			} else if (pwd1 != pwd2) {
				$("#alert-true").hide();
				$("#alert-false").show();
				$("#submit").attr("disabled", "disabled");
			}
		}
	});

	/* 중복확인 버튼, 약관동의 */
	$('.signup-btn').click(function() {
		pwd1 = document.signupForm.password.value;
		pwd2 = document.signupForm.pwcheck.value;

		if (pwd1.length < 8) {
			document.signupForm.password.focus();
			return false;
		} else if (pwd1 != pwd2) {
			document.signupForm.pwcheck.focus();
			return false;
		}

		var nicknamecheckBtn = $(".nicknamecheck-btn").val();
		var emailcheckBtn = $(".emailcheck-btn").val();
		if (nicknamecheckBtn == "N") {
			alert("닉네임 중복확인 버튼을 눌러주세요.");
		} else if (nicknamecheckBtn == "Y") {
			if (emailcheckBtn == "N") {
				alert("이메일 중복확인 버튼을 눌러주세요.");
			} else if (emailcheckBtn == "Y") {
				if ($('#signup-agree').prop("checked") == false) {
					alert('약관에 동의해주세요.');
				} else {
					document.signupForm.submit();
				}
			}
		}

	});
});

/* mypage 비밀번호 일치 체크 */
$(function() {
	$("#alert-true").hide();
	$("#alert-false").hide();
	$("#alert-check").hide();
	$("#new_password").keyup(function() {
		var pwd1 = $("#new_password").val();
		var pwd2 = $("#new_password_confirm").val();

		if (pwd1.length < 8) {
			$("#alert-check").show();
			$("#submit").attr("disabled", "disabled");
		} else {
			$("#alert-check").hide();
			$("#submit").removeAttr("disabled");
		}

		if (pwd1 == "" || pwd2 == "") {
			return false;
		} else if (pwd1 != "" && pwd2 != "") {
			if (pwd1 == pwd2) {
				$("#alert-true").show();
				$("#alert-false").hide();
				$("#submit").removeAttr("disabled");
			} else if (pwd1 != pwd2) {
				$("#alert-true").hide();
				$("#alert-false").show();
				$("#submit").attr("disabled", "disabled");
			}
		}
	});

	/* 비밀번호 확인 */
	$("#new_password_confirm").keyup(function() {
		var pwd1 = $("#new_password").val();
		var pwd2 = $("#new_password_confirm").val();

		if (pwd1 == "" || pwd2 == "") {
			return false;
		} else if (pwd1 != "" && pwd2 != "") {
			if (pwd1 == pwd2) {
				$("#alert-true").show();
				$("#alert-false").hide();
				$("#submit").removeAttr("disabled");
			} else if (pwd1 != pwd2) {
				$("#alert-true").hide();
				$("#alert-false").show();
				$("#submit").attr("disabled", "disabled");
			}
		}
	});

	/* 중복확인 버튼, 약관동의 */
	
});

function password_change() {
	pwd1 = document.update_form.new_password.value;
	pwd2 = document.update_form.new_password_confirm.value;
	alert(pwd1);
	alert(pwd2);
	var _str1 = $("#email").val();
	console.log("이메일=>" + _str1);
	alert(_str1);

	if (pwd1.length < 8) {
		document.update_form.new_password.focus();
		return false;
	} else if (pwd1 != pwd2) {
		document.signupForm.new_password_confirm.focus();
		return false;
	}
	
	if(pwd1.length > 7 && pwd1 == pwd2){
		$.ajax({

			url : '/bit_project/passwordUpdate.do',
			type : "post",
			dataType : "json",
			data : {
				email : $("#email").val(),
				password : $("#new_password_confirm").val()
			},
			contentType : 'application/x-www-form-urlencoded; charset=utf-8',

			success : function(retVal) {
				if (retVal.res == "OK") {
					$(".button5").attr("value", "Y");
					alert("비밀번호 변경 완료.");
				} else { // 실패했다면
					alert("비밀번호 변경 실패.");
				}
			},
			error : function() {
				alert("ajax통신 실패!!!");
			}

		});
	}
	
//	window.location.href='mypage_main.my#6';
	location.replace("mypage_main.my")
	
	
	/*
	var nicknamecheckBtn = $(".button1").val();
	var passwordcheckBtn = $(".button2").val();
	if (nicknamecheckBtn == "N") {
		alert("닉네임 중복확인 버튼을 눌러주세요.");
	} else if (nicknamecheckBtn == "Y") {
		if (passwordcheckBtn == "N") {
			alert("비밀번호 확인 버튼을 눌러주세요.");
		} else if (passwordcheckBtn == "Y") {
			document.update_form.submit();
		}
	}
	*/
};

$(function() {
	// Hide URL/FileReader API requirement message in capable browsers:
	if (window.createObjectURL || window.URL || window.webkitURL
			|| window.FileReader) {
		$('.browser').hide()
		$('.preview').children().show()
	}

	function isDataURL(s) {
		return !!s.match(isDataURL.regex);
	}
	isDataURL.regex = /^\s*data:([a-z]+\/[a-z]+(;[a-z\-]+\=[a-z\-]+)?)?(;base64)?,[a-z0-9\!\$\&\'\,\(\)\*\+\,\;\=\-\.\_\~\:\@\/\?\%\s]*\s*$/i;

	function readURL(input) {

		if (input.files && input.files[0]) {
			var reader = new FileReader();
			var preview = $(input).data('preview');
			var _invalid = $(input).parent().parent().find('.invalid-file')

			reader.onload = function(e) {

				if (isDataURL(e.target.result)) {
					_invalid.hide()
					$('#' + preview).css('background-image',
							'url(' + e.target.result + ')');
					$('#' + preview).hide();
					$('#' + preview).fadeIn(650);
				} else {

					$('#' + preview).hide()

					_invalid
							.html('<div class="alert alert-false"><strong>Error!</strong> Invalid image file.</div>')
					_invalid.show()
				}

			}

			reader.readAsDataURL(input.files[0]);
		}
	}

	$('.imageUpload').bind('change', function(e) {
		e.preventDefault()

		readURL(this)
	});
})
