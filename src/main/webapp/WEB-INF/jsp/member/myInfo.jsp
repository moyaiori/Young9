<%@ page contentType="text/html; charset=utf-8"%>
<script src="../js/ajax.js"></script>
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>



<jsp:include page="myPageMenu.jsp"></jsp:include>

<div class="container col-md-8 col-md-offset-2" >
		
	<form action="registProc.bins" method="post" name="addjoin">
		<table class="table">
			<colgroup>
					<col width="100" />
					<col width="200" />
				</colgroup>
				
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">Email</td>
				<td>${member.email }메일주소동적받아오기</td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이름</td>
				<td>${member.name }이름동적받아오기</td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">닉네임</td>
				<td>동적받아오기</td>
			</tr>
		
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">연락처</td>
				<td>${member.phoneNumber} - ${member.phoneNumber2} - ${member.phoneNumber3 } 동적받아오기</td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">어학시험</td>
				<td>동적받아오기</td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">점수</td>
				<td>자기어학점수 받아오기</td>
			</tr>
			
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">목표점수</td>
				<td>어학목표점수 받아오기</td>
			</tr>
			<tr>
				<td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">자기소개</td>
				<td><textarea class="form-control" style="resize: none" rows="5" >자기소개동적받아오기</textarea></td>
			</tr>
			
		</table>
	</form>
</div>