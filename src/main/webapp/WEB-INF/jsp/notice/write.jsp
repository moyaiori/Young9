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
<script>
	function check() {
		if (document.noticeWriteForm.subject.value == "") {
			alert("공지글 제목을 입력하세요.");
			return false;
		} else if (document.noticeWriteForm.content.value == "") {
			alert("공지글 내용을 입력하세요.");
			return false;
		}
	}
	
	$(function(){
		$("#insert").click(function(){
			$(location).attr('href', "../article/insert");
		});
	});

	
</script>


<div class="container">
	<form class="col-md-8 col-md-offset-2" method="post"
		action="../article/insert" name="noticeWriteForm">
		<table class="table">
			<tr> 
				<th colspan="4">※ 비밀번호는 글 수정, 삭제시 필요합니다.</th>
			</tr>
			<tr>
				<td style="text-align: center;">글제목</td>
				<td colspan="4"><input class="form-control" type="text"
					name="subject" size="10" /></td>
			</tr>
			<tr>
				<td style="text-align: center;">작성자</td>
				<td colspan="4"><input class="form-control" type="text"
					name="writer" disabled size="10" value="admin" /></td>
				<td></td>
			</tr>
			<tr>
				<td style="text-align: center;">글내용</td>
				<td colspan="4"><textarea class="form-control" name="content"
						rows="10" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><input type="submit" value="글쓰기"
					class="btn btn-danger col-md-2 col-md-offset-10"
					onclick="return check()"></td>
			</tr>
		</table> 
	</form>

</div>
