<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	$("#kickButton").click(function(){
		
		var select = $("option:selected").val();
		
		$.ajax({
			type : "post",
			url : "/study/kickProc",
			data : select,
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

<font class="j_txt"> 강퇴!!!</font><hr>			
<br>
<div class="container" style="margin:0px auto" align="center" >

<p class="j_p" style="margin-bottom: 40px">
				<font class="j_txt"> 신중히.. </font>강퇴해주세여.,..</p>
				<br>
				<br>
	<select size="6" style="width:250px">
			<c:forEach items="${groupMember}" var="member">
					<option>${member.nickname}</option>
				</c:forEach>
		</select>
<br>
<br>
<Br>
</div>
<div class="container" style="margin:0px auto" align="center" >
<button id="kickButton" class="btn btn-danger">강퇴하기</button>
</div>
<jsp:include page="../popup/modal.jsp"/>