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
 
 
<title></title>
</head>
<body>
<div class="container" style="margin:0px auto" align="center" >
<table class="table" style="width: 70%">
	<tr>
		<th colspan="4"><h2>내 모임 상세보기</h2></th>
	</tr>
	<tr>
		<td>참여인원 보기</td>
		<td colspan="3">
			<select size="6" style="width:250px">
				<c:forEach items="${groupMember}" var="member">
					<option>${member.nickname}</option>
				</c:forEach>
			</select>
		</td>
		<td></td>
	</tr>
	<tr>
		<td>목표 분야</td>
		<td>${group.targetTestName}</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>목표 점수</td>
		<td>${group.targetScore }</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>기 간</td>
		<td>${group.studyStartDate.split(" ")[0]} ~ ${group.studyEndDate.split(" ")[0]}</td>
		<td></td>
		<td></td>
	</tr>
	<tr>
		<td>모임소개</td>
		<td colspan="3">
			<textarea cols="10" rows="10" style="width: 400px">${group.groupIntrodution}</textarea>
		</td>
	</tr>
	<tr>
		<td>단어파일받기</td>
		<td><button class="btn btn-danger">다운로드</button></td>
		<td></td>
		<td></td>
	</tr>

</table>

</div>



</body>
</html>