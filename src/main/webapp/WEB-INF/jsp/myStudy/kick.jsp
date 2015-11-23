<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

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




<title></title>
</head>
<body>

<Br>
<br>

<p class="j_p"  align="center">

				<font class="j_txt"> 강퇴!!!</font><hr></p>
				
<Br>
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
<button class="btn btn-danger">강퇴하기</button>
	</div>
</body>
</html>