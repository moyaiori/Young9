<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<title>영구해요♬</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>


$(function(){
	
	
	$("#notice").click(function(){
		$(location).attr('href', "../article/noticelist");
	});
	
	$("#studysearch").click(function(){
		$(location).attr('href', "../study/search");
	});
	
	$("#studycreate").click(function(){
		$(location).attr('href', "../study/create");
	});
	
	$("#exit").click(function(){
		$(location).attr('href', "../study/exit");
	});
	
	$("#kick").click(function(){
		$(location).attr('href', "../study/kick");
	});
	
	$("#quizlist").click(function(){
		$(location).attr('href', "../study/quizlist");
	});
	
	$("#studyinfo").click(function(){
		$(location).attr('href', "../study/studyinfo");
	});
	
	$(".regist").click(function(){
		$(location).attr('href', "../member/regist");
	});
	
	$("#myinfo").click(function(){
		$(location).attr('href', "../member/myinfo");
	});
	
	$("#setquiz").click(function(){
		$(location).attr('href', "../study/setquiz");
	});
	
	$("#todayquiz").click(function(){
		$(location).attr('href', "../study/todayquiz");
	});
	
	$("#viewrecord").click(function(){
		$(location).attr('href', "../study/viewrecord");
	});
	
	$("#studyboard").click(function(){
		$(location).attr('href', "../study/studyboard");
	});
	
	$("#login").click(function(){
		$("#loginModal").modal();
	});
	
	$("#logout").click(function(){	
		$.ajax({
			type : "get",
			url : "../member/logout",
			success : function(data) {
				$(location).attr('href', "/");
			},
			error : function(data){
			
			}
		});
	});
});
</script>
</head>
	<body>
		<div>
		
		
		    <jsp:include page="header.jsp"/>
		    
		    <jsp:include page="aside.jsp"/>
		    
		    <!-- 동적으로 화면 조정해야됨 -->
		    <section style="width: 80%; float: left;">
		    	<jsp:include page="${contentFile}"/>
		    </section>
		    
		</div>
		
		
	</body>
</html>