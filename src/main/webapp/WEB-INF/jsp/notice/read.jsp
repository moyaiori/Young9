<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css"
	href="../style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css"
	href="../style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css"
	href="../style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="../style/bootstrap.min.css">

<script>
	window.onload = function() {
		document.getElementById("back").onclick = function() {
			/* 	history.back(); */

			location.href = "../notice/notice_list.bins";
		}

		document.getElementById("modify").onclick = function(){
			var returnValue = confirm("해당 공지사항 글을 수정 하시겠습니까?");

			if (returnValue) {
				location.href = "../notice/noticeModify.bins?no="+'${article.articleId}';
				
				
			//	document.getLogin.submit();
				//alert("삭제 해야됑");
			} else {
				//history.back();
			}

		}

		document.getElementById("delete").onclick = function(){
			var returnValue = confirm("해당 공지사항 글을 삭제 하시겠습니까?");

			if (returnValue) {
				location.href = "../notice/notice_delete.bins?no="+'${article.articleId}';
				
				
				
			//	document.getLogin.submit();
				//alert("삭제 해야됑");
			} else {
				//history.back();
			}

		}

	}
</script>

<div class="container" style="width: 70%">
<p class="j_p">
				<font class="j_txt">N </font>O T I C E</p>

	<div class="col-md-10 col-md-offset-1">
	
			<table class="table">
				<tr>
					<th class="active">글제목</th>
					<td colspan="3">ex제목</td>
				</tr>
				<tr>
					<th class="active">작성자</th>
					<td>ex아이디</td>
					<th class="active">작성일</th>
					<td>ex작성일</td>
				</tr>
				<tr>
					<th class="active">조회수</th>
					<td colspan="3">ex조회수</td>
				</tr>

				<tr>
					<td colspan="4" style="padding: 10px 30px"><textarea
							class="form-control" rows="10" cols="10" readonly
							style="resize: none;">ex내용</textarea></td>
				</tr>
				<tr>
					<td colspan="4" style="text-align: right;">
							<input class="btn btn-danger" type="button" id="modify" value="수정하기">
							<input class="btn btn-danger" type="submit" id="delete" value="삭제하기">
						 <input class="btn btn-danger" type="button" value="돌아가기" id="back"></td>
				</tr>
			</table>
	
	</div>
</div>
