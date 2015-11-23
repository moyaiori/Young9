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

검색화면입니다..
<br>
<br>
<br>
<Br>


<div class="container" style="margin:0px auto" align="center" >
<div class="container" >
<select>
	<option>모임장</option>
	<option>모임명</option>
</select>
<input type="text" style="width: 300px">　　　　
<label>스터디기간</label>　
	<select>
		<option>1개월미만</option>
		<option>1개월~2개월</option>
		<option>2개월~3개월</option>
		<option>3개월~4개월</option>
		<option>4개월~5개월</option>
		<option>5개월~6개월</option>
	</select>
	<br>
	<input type="hidden" style="float: left">
	<label>모임장 혹은 모임명으로 검색이 가능합니다.</label>
	<br>
</div>
<Br>
<Br>

<div class="container" style="margin:0px auto; width: 70%" >

<table class="table" style="width: 45%;float: left;">
	<tr>
		<th colspan="4" >목표 분야</th>
	</tr>
	<tr>
		<td colspan="2"><input type="checkbox">TOEIC(토익)</td>
		<td colspan="2"><input type="checkbox">OPIC(오픽)</td>
	</tr>
		<tr>
		<td colspan="2"><input type="checkbox">TOEIC Speaking</td>
		<td colspan="2"><input type="checkbox">수능 영어</td>
	</tr>
		<tr>
		<td colspan="2"><input type="checkbox">생활 영어</td>
		<td colspan="2"><input type="checkbox">TEPS(텝스)</td>
	</tr>
</table>
<table class="table" style="width: 45%;float: right;">
	<tr>
		<th colspan="5" >모집 인원</th>
	</tr>
	<tr>
		<td></td>
		<td><input type="checkbox">4명</td>
		<td><input type="checkbox">5명</td>
		<td><input type="checkbox">6명</td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="checkbox">7명</td>
		<td><input type="checkbox">8명</td>
		<td><input type="checkbox">9명</td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="checkbox">10명</td>
		<td></td>
		<td></td>
		<td></td>		
	</tr>
</table>
</div>
<div class="container" style="margin:0px auto" align="center" >
<input type="checkbox" ><label>모집이 끝난 스터디도 검색을 원하시면 체크해주세요.</label>	
</div>
<input type="submit" class="btn btn-danger" value="검  색">　　
<input type="button" class="btn btn-danger" value="초기화">
</div>

</body>
</html>