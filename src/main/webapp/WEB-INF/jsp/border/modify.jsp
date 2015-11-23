<!-- 
	레이아웃 작성자 : 가승호
	레이아웃 수정최종 날짜 : 2015 -11 -17 : 17시
 -->
<%@ page contentType="text/html; charset=utf-8"%>
 <link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<%--  
<% 
	String articleId = request.getParameter("articleId");
	String writer = request.getParameter("writer");
%>--%>
<script>
	window.onload = function() {

		var form = document.getElementById("writeId");
		form.onclick = function() {
			if (document.getElementById("subject").value == "") {
				alert("제목을 입력해주세요");
				return false;
			}
			if (document.getElementById("content").value == "") {
				alert("내용을 입력해주세요");
				return false;
			}
		}
	}
</script>

<body>

	<p class="j_p" style="margin-bottom: 20px">문 의 사 항</p>

	<div class="container" style="margin-left: 150px">


		<form class="col-md-8 col-md-offset-2"
			action="../qna/qna_modify_proc.bins" method="post">
			<table class="table" style="width: 70%">
				<thead>
					<tr>
						<th class="col-md-2"
							style="vertical-align: middle; text-align: center; border-bottom-width: 1px">글제목</th>
						<td colspan="3"><input class="form-control" id="subject"
							type="text" name="subject" size="30" value="ex제목" />
					</tr>
				</thead>
				<tr>
					<th scope="row" style="vertical-align: middle; text-align: center;">작성자</th>
					<td><input class="form-control" type="text" name="memberId"
						disabled size="30" value="ex아이디" /></td>
				</tr>
				<tr>
					<td class="cont" colspan="5"><textarea class="form-control"
							id="content" name="content" rows="15" style="resize: none;">ex내용</textarea></td>
				</tr>
				<tr>
					<td><input type="hidden" name="articleId"
						value="번호"> <input type="hidden"
						name="memberId" value="글쓴이"> <input
						class="btn btn-danger" id="writeId" type="submit" value="작성완료" /></td>
					<td><input onclick="location.href='../qna/qna_view.bins'"
						type="button" class="btn btn-danger" value="목록"
						style="float: right;" />
				</tr>
			</table>
		</form>
	</div>
</body>