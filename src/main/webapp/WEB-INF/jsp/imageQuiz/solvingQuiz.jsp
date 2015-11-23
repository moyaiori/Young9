<%@ page contentType="text/html; charset=utf-8"%>
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
<div style="width: 50%">
	<table>
		<tr>
			<td>이미지퀴즈만들기</td>
		</tr>
		</table>
		<div style="float: left;">
			<table class="table" style="text-align: center">
				<tr>
					<td>현재문항페이지</td>
				</tr>
				<tr>
					<td><input type="image"
						src="http://ussaram.com/data/file/us_health/1197454392_43264c6c_EC82ACEAB3BC.jpg" width=300px, height=300px></td>
				</tr>
				<tr>
					<td><input type="button" value="파일추가"> 
					<input type="text"></td>
				</tr>
			</table>
		</div>

		<div style="float: right;">
			<table>
				<tr>
					<td colspan="2">오늘의단어</td>
				</tr>
				<tr>
					<td colspan="2"><select size="6" style="width: 200px;margin-bottom: 20px;">
							<option>apple</option>
							<option>apple</option>
							<option>apple</option>
							<option>apple</option>
							<option>apple</option>
							<option>apple</option>
							<option>apple</option>
							<option>apple</option>
						</select>
					</td>
					

				</tr>
				
				<tr>
					<td style="margin-top: 20px">단어</td>
					<td><input type="text" style="width: 115px"></td>
				</tr>
				<tr>
					<td>의미</td>
					<td><input type="text" style="width: 115px"></td>
				</tr>
				
				<tr style="height: 125px">
					<td><select size="3">
							<option>1번문항</option>
							<option>2번문항</option>
							<option>3번문항</option>
							<option>4번문항</option>
							<option>5번문항</option>
							<option>6번문항</option>
							<option>7번문항</option>
							<option>8번문항</option>
							<option>9번문항</option>
							<option>10번문항</option>
						</select>
					</td>
					<td style="text-align: center"><input type="button" value="페이지추가"><br> 
					<input type="button" value="페이지삭제"> </td>
				</tr>
				
				<tr>
				<td style="text-align: center " colspan="2" ><input type="button" value="이전">
					<input type="button" value="다음"> </td>
				</tr>
			</table>
			</div>
	</div>
				<div style="clear: both; text-align: center; width: 50%; padding-top: 20px;">
						<input type="button" value="확인" style="margin-right: 20px">
						<input type="button" value="취소">
				</div>
</body>
</html>