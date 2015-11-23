<%@ page contentType="text/html; charset=utf-8"%>
<style type="text/css">
hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
    width: 30%
}
</style>
<script>
	$(function(){
		$("#exitButton").click(function(){
			$.ajax({
				type : "post",
				url : "/study/exitProc",
				success : function(message){
					$("#result").html(message);
				    $("#myModal").modal();
				},
				error : function(){
					alert("실패");
				}
			});
		});
	});
</script>

<br>
<br>

<p class="j_p"  align="center">

<font class="j_txt"> 탈퇴...?</font><hr>
				
<Br>
<div class="container" style="margin:0px auto" align="center" >

<p class="j_p" style="margin-bottom: 40px">
<font class="j_txt"> 정말로 </font>탈퇴하시겠습니깡....??</p>
<br>
<br>
<button id="exitButton" class="btn btn-danger">탈퇴하기</button>
<button class="btn btn-danger">취소</button>
</div>
<jsp:include page="../popup/modal.jsp"/>
