<%@ page contentType="text/html; charset=utf-8"%>
<script src="../js/ajax.js"></script>


<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
	<script>

	function check() {
		
		if (document.addjoin.email.value == "") {
			alert("이메일을 입력 하세요");
			return false;
		} else if (document.addjoin.name.value == "") {
			alert("이름을 입력 하세요");
			return false;
		} else if (document.addjoin.passwd.value == "") {
			alert("비밀번호를 입력 하세요");
			return false;
		} else if (document.addjoin.passwdCheck.value == "") {
			alert("비밀번호확인을 입력 하세요");
			return false;
		} else if (document.addjoin.phone2.value == "") {
			alert("전화번호를 올바르게입력하세요");
			return false;
		} else if (document.addjoin.phone3.value == "") {
			alert("전화번호를 올바르게입력하세요");
			return false;
		} else if (document.addjoin.passwd.value != document.addjoin.passwd2.value) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		} else if (document.addjoin.birth.value == "") {
			alert("생년월일을 입력하세요.");
			return false;
		}
	}
	
	

	/*   조현빈 자바스크립트 부분 추가    */
	var checked = false;
	window.onload = function() {
		
		document.addjoin.phone.value = ${member.phoneNumber};
		
		document.addjoin.passwd.onkeyup = function(){
			if (document.addjoin.passwd.value.trim() == "" || document.addjoin.passwd.value == null) {
				setMessage("비밀번호를 입력해주세요", "passwd", "red");
			}else{
				setMessage("사용가능한 비밀번호 입니다.", "passwd", "blue");
			}
		}
		
		document.addjoin.passwdCheck.onkeyup = function(){
			if(document.addjoin.passwdCheck.value.trim() == "" || document.addjoin.passwdCheck.value == null){
				setMessage("비밀번호 확인을 입력해주세요", "passwdCheck", "red");
			}else if(document.addjoin.passwd.value != document.addjoin.passwdCheck.value){
				setMessage("입력된 비밀번호가 다릅니다.", "passwdCheck", "red");
			}else{
				setMessage("사용가능한 비밀번호 입니다.", "passwdCheck", "blue");
			}
		}
		
		// 이벤트소스에 이벤트리스너 등록
		document.addjoin.id.onkeyup = function() {
			var joinId = document.addjoin.id.value;
		}
		

		document.getElementById("email").onkeyup = function() {
			var joinEmail = document.addjoin.email.value;
			var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
			if (document.getElementById("email").value.match(regExp)) {
				// 서버에 아이디 전송
				ajax({
					url : "../user/MemberJoinEmailChk.bins",
					data : "joinEmail=" + joinEmail,
					callback : function(xhr) {
						onMessage(xhr, "email");
					}
				});
				checked = true;
			} else {
				setMessage("이메일 형식에 맞게 입력해주세요. ex)________@____.__.__", "email");
			}
		}
		
		function onMessage(xhr, type){
	    	console.log(xhr.responseText);
	    	var result = xhr.responseText;
	    	if(result.trim() == "true"){//아이디 중복 === : 타입까지 비교!!
	    		setMessage("사용가능합니다.",type);
	    	}else{
	    		setMessage("중복된 내역 입니다.",type);
	    	} 
	    }

		 function setMessage(message, type, color){
		    	var messageBox = document.getElementById(type+"messageBox");
		    	if(messageBox){
		    		messageBox.innerHTML = message;
		    	}
		    	if(color){
		    		messageBox.style.color = color;
		    	}
		    }
	}
</script>



	<p class="j_p">
		<font class="j_txt">M </font>Y P A G E
	</p>

<jsp:include page="myPageMenu.jsp"></jsp:include>


<div class="container col-md-8 col-md-offset-2">

	<form action="../user/myEditInfoProc.bins" method="post" name="addjoin">
		<table class="table">
			<colgroup>
				<col width="100" />
				<col width="200" />
			</colgroup>
			
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">Email</td>
				<td><input type="text"  name="email" class="form-control" disabled="disabled" value="자기이메일" >
			
			</tr>
			<tr>
				<td style="text-align: center; vertical-align: middle; font-size: 14px; font-weight: bold">비밀번호</td>
				<td><input type="password" class="form-control" id="passwd" name="passwd"><span id="passwdmessageBox"></span></td>
			</tr>
			<tr>
				<td style="text-align: center; vertical-align: middle; font-size: 14px; font-weight: bold">비밀번호 확인</td>
				<td><input type="password" class="form-control"	id="passwdCheck"><span id="passwdCheckmessageBox"></span></td>
			</tr>
			
			<tr>
				<td style="text-align: center; vertical-align: middle; font-size: 14px; font-weight: bold">이름</td>
				<td><input type="text" class="form-control" id='name'
					name="name" value="${member.name }"  disabled="disabled"></td>
			</tr>
			
				<tr>
				<td style="text-align: center; vertical-align: middle; font-size: 14px; font-weight: bold">닉네임</td>
				<td><input type="text" class="form-control" id='name'
					name="name" value="수정전닉네임"></td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">생년월일</td>
				<td><input type="date" class="form-control" name="birth" disabled></td>
			</tr>
	
				<tr>
				<td style="text-align: center; vertical-align: middle; font-size: 14px; font-weight: bold">연락처</td>
				<td class="form-inline">
					<div class="form-group">
						<select class="form-control" name="phone">
							<option>010</option>
							<option>011</option>
							<option>017</option>
							<option>019</option>
							<option>070</option>
						</select> - 
						<input type="text" size="12" class="form-control" name="phone2"	value="${member.phoneNumber2}"> - 
						<input type="text" size="12" class="form-control" name="phone3" value="${member.phoneNumber3}">
					</div>
				</td>
			</tr>
			
		<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">어학능력</td>
				<td class="form-inline">
					<div class="form-group">
					<select class="form-control" name="lang">
						<option>Toeic</option>
						<option>Opic</option>
						<option>생활영어</option>
						<option>수능영어</option>
						<option>기타</option>
					</select>
				<input type="text"  size="8" class="form-control" name="lang2">　
				<font style="font-size: 12px;  vertical-align: middle;">  </font>
				<input type="text"  size="3" class="form-control" name="myscore" placeholder="현재점수">
				<font style="font-size: 12px; vertical-align: middle;">점</font>　
				<font style="font-size: 12px;  vertical-align: middle;">  </font>
				<input type="text"  size="3" class="form-control" name="target" placeholder="목표점수">
				<font style="font-size: 12px; vertical-align: middle;">점</font>　
				<input type="button" class="btn btn-info" name="add"  value="추가" >
				</div>
				</td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">자기소개</td>
				<td><textarea class="form-control" style="resize: none" rows="5"></textarea></td>
			</tr>
			
			
			<tr>
				<td><input type="hidden" name="" value=""></td>
				<td><input type="submit" value="정보 수정" class="btn btn-info" onclick="return check()">
			</tr>
		</table>
	</form>
</div>