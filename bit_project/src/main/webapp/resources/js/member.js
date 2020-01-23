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
	/*이메일 중복 체크*/
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
	/*비밀번호 일치 체크 */
	$(function() {
		$("#alert-true").hide();
		$("#alert-false").hide();
		$("#alert-check").hide();
		$("input").keyup(function() {
			var pwd1 = $("#password").val();
			var pwd2 = $("#pwcheck").val();
			
			if (pwd1.length < 8) { 
				$("#alert-check").show();
				$("#submit").attr("disabled", "disabled");
			} else {
				$("#alert-check").hide();
				$("#submit").removeAttr("disabled");
			}
			
			if(pwd1 =="" || pwd2 =="") {
				return false;	
			}else if (pwd1 != "" && pwd2 != "") {
				if (pwd1 == pwd2) {
					$("#alert-true").show();
					$("#alert-false").hide();
					$("#submit").removeAttr("disabled");
			} else if(pwd1 != pwd2 ){
					$("#alert-true").hide();
					$("#alert-false").show();
					$("#submit").attr("disabled", "disabled");
			}
		}
		});
		
			/*중복확인 버튼, 약관동의*/
	        $('.signup-btn').click(function(){
	        	pwd1 = document.signupForm.password.value;
	        	pwd2 = document.signupForm.pwcheck.value;
	        
	    		if (pwd1.length < 8 )
	    		{
	    			document.signupForm.password.focus();
	    			return false;
	    		}else if(pwd1 != pwd2){
	    			document.signupForm.pwcheck.focus();
	    			return false;
	    		}
	    		
				var nicknamecheckBtn = $(".nicknamecheck-btn").val();
				var emailcheckBtn = $(".emailcheck-btn").val();
				if(nicknamecheckBtn == "N") {
					alert("닉네임 중복확인 버튼을 눌러주세요.");
				}else if(nicknamecheckBtn == "Y") {
					if(emailcheckBtn == "N"){
						alert("이메일 중복확인 버튼을 눌러주세요.");
					}else if(emailcheckBtn == "Y"){
						if($('#signup-agree').prop("checked")== false) 
						{
						 alert('약관에 동의해주세요.');
						} else {
							document.signupForm.submit();
						}
					}
				}
				
	        });
	});
	
	$(function () {
        // Hide URL/FileReader API requirement message in capable browsers:
        if (
            window.createObjectURL ||
            window.URL ||
            window.webkitURL ||
            window.FileReader
        ) {
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

                    if( isDataURL(e.target.result) )    {
                        _invalid.hide()
                        $('#' + preview).css('background-image', 'url('+e.target.result +')');
                        $('#' + preview).hide();
                        $('#' + preview).fadeIn(650);
                    } else {

                        $('#' + preview).hide()
                        
                        _invalid.html('<div class="alert alert-false"><strong>Error!</strong> Invalid image file.</div>')
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
	