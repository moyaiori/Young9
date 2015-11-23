<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>



</head>
<body>
	<div class="container col-md-8 col-md-offset-2">
		<table class="table" style="text-align: center">
			<tr>
				<td colspan="7">이미지퀴즈맞추기</td>
			</tr>
			<tr>
				<td colspan="7">문제당 3번의 기회</td>
			</tr>
			<tr>
				<td style="vertical-align: middle;"><input type="button" value="이전문제" ></td>
				<td colspan="5"><input type="image"
					src="http://ussaram.com/data/file/us_health/1197454392_43264c6c_EC82ACEAB3BC.jpg"
					width=300px, height=300px></td>
				<td style="vertical-align: middle;"><input type="button" value="다음문제"></td>
			</tr>

			<tr>
				<td colspan="7">단어와 의미 모두 일치해야 정답</td>
			</tr>

			<tr>
				<td style="vertical-align: middle;">남은횟수 3/3</td>
				<td  style="vertical-align: middle;">단어<br>뜻
				</td>
				<td  style="vertical-align: middle;"><input type="text"><br> <input type="text"></td>
				<td style="vertical-align: middle;"><input type="button" value="정답확인"></td>
				<td style="vertical-align: middle;"><input type="button" value="결과보기"></td>
				<td style="vertical-align: middle;"><input type="button" value="다음에하기"></td>
			</tr>

		</table>
	</div>
</body>
</html>