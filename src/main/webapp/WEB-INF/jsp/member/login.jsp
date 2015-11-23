<%@ page contentType="text/html; charset=utf-8" %>
<script>
	$(function(){
		$("#lost").click(function(){
			$("#loginModal").modal("hide");
			$("#lostModal").modal();
		});

		$("#loginButton").click(function(event){
	
			var email = $("#email").val();
			var passwd = $("#passwd").val();
			var info = {email:email, passwd:passwd};
			
			$.ajax({
				type : "post",
				url : "/member/login",
				data: info,
				success : function(data) {
					$(location).attr('href', "/");
				
				/* 	window.location="template/template"; */
					/* location.reload(true);  */
				/* 	$(location). */
			 	/* 	$("#contentFile").load("template/template", contentFile); */
				},
				error : function(data){
					alert("실패");
				}
			});
		});
		
		
	});

</script>


<link href="../css/fontstyle.css" rel="stylesheet" type="text/css">
<div class="modal fade" id="loginModal" role="dialog" >
	<div class="modal-dialog">
	<div style="background-color: #6D429E">
			<button type="button" class="close" data-dismiss="modal">&times;</button>		
			<font style="size:15 ;color: white;">　L O G I N</font>
				<table class="table">
				<tr>
					<td class="fontstyle" >Email</td>
					<td><input type="text" class="form-control" id="email"></td>
					<td></td>
				</tr>
				<tr>	
					<td class="fontstyle">Password</td>
					<td><input type="password" class="form-control" id="passwd"></td>
					<td><input type="submit"   class="btn btn-default btn-block" value="login" id="loginButton" data-dismiss="modal"></td>
				</tr>
				
				<tr>	
					<td class="fontstyle" colspan="2">회원가입을 원츄!</td>
					<td><input type="button"  class="btn btn-default btn-block" value="Join" class="regist"></td>
				</tr>
				
				<tr>	
					<td class="fontstyle" colspan="2">아이디와 비밀번호가 기억이안나요?</td>
					<td><input type="button"  class="btn btn-default btn-block" value="ID/Password 찾기" id="lost"></td>
				</tr>
					<tr>	
					<td colspan="3"><input type="button" class="btn btn-default btn-block" value="닫기" data-dismiss="modal" style="float: right"></td>
				</tr>
			
	</table>
	</div>
</div>
</div>