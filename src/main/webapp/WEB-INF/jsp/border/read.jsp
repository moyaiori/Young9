<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -10 -23 : 15시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String articleId = request.getParameter("articleId");
%>
 <link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<body>
<div class="container" style="margin-left: 185px">
	<div class="col-md-10 col-md-offset-1" >
	<table class="table" style="width: 70%">
			<tr>
				<th class="active">제목</th>
				<td colspan="3">ex제목</td>
			</tr>
			
			<tr>
				<th class="active">작성자</th>
					<td>exAdmin</td>
				
				
				<th class="active">작성일</th>
				<td>ex작성일</td>
			</tr>
			<tr>
				<th class="active">조회수</th>
				<td colspan='3'>ex조회수</td>
			</tr>

			<tr>
				<td  colspan="4" style="padding: 10px 30px">
				<textarea class="form-control" rows="10" cols="10" readonly style="resize:none;">${qna.content}</textarea>
				</td>
			</tr>
			<tr><td colspan="3" style="padding: 0 0 0 0"></td></tr>
			
	</table>
	<input onclick="location.href='../qna/qna_view.bins'" type="button" class="btn btn-danger" value="목록" />
			<input onclick="location.href='../qna/qna_write.bins?articleId=<%=articleId%>&writer=${qna.memberId}'" type="button" class="btn btn-danger" value="답글쓰기"  />
			<input onclick="location.href='../qna/qna_modify.bins?articleId=<%=articleId%>'" type="button" class="btn btn-danger" value="수정하기"  />
			<input onclick="location.href='../qna/qna_delete.bins?articleId=<%=articleId%>'" class="btn btn-danger" type="button" id="delete" value="삭제하기">
		
	</div>
</div>
</body>