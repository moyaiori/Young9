<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<script>
	$(function(){
		var count = 0;
		var wordJson = '[';
		
		$("#insertWord").click(function(){
			$("#wordModal").modal();
		});
		
		 $("#addWord").click(function(){
			 count++;
			 var output = "<tr class='test'>";
			 output += "<td>";
			 output += String(count);
			 output += "</td>";
			 output += "<td>";
			 output += "<input type='text' name='word' class='form-control' style='width:200px;'>";
			 output += "</td>";
			 output += "<td colspan='2'>";
			 output += "<input type='text' name='means' class='form-control' style='width:200px;'>";
			 output += "</td>";
			
			 output += "</tr>";
			 
			 $("#wordBody").append(output);
		 });
		 
		 $("form").submit(function(){
			 for (var i = 0; i < count; i++) {
				 var word = $("input[name=word]").get(i).value;
				 var means = $("input[name=means]").get(i).value;
				 wordJson += '{"word":"' + word + '", "means":"' + means + '"}'
			 }	
			 wordJson += ']';
			 $("input[type=hidden]").attr("value", wordJson);
		 });
	});

</script>
<link href="../css/fontstyle.css" rel="stylesheet" type="text/css">
 
</head>
<body>


	<form action="/study/createProc" method="post">
	<div class="container col-md-7 col-md-offset-2" style="margin-top: 50px;">
	모임만들기
		<input type="hidden" name="words">
		<table class="table">
			<tr>
				<td class="subfontstyle" >모임명</td>
				<td colspan="4"><input type="text" class="form-control"  name="groupName" style="width: 100%"></td>
			</tr>
			<tr>
				<td class="subfontstyle" >모집인원</td>
				<td ><input type="number"  class="form-control"  min="4" max="10" name="recruitCount" style="width: 55%"></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="4"><label>최소 4인부터 최대 10인까지 가능합니다.</label></td>
			</tr>
			<tr>
				<td class="subfontstyle" >모집기간</td>
				<td class="subfont">시작일</td>
				<td><input type="date" name="RecruitStartDate"  class="form-control" style="width: 150px"  ></td>
				<td class="subfont">마감일</td>
				<td><input type="date" name="RecruitEndDate"  class="form-control"  style="width: 150px" ></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="4"><label>모집기간은 최소 1주, 최대2주 가능</label></td>
			</tr>
			<tr>
				<td class="subfontstyle" >스터디기간</td>
				<td class="subfont">시작일</td>
				<td><input type="date" name="StudyStartDate"  class="form-control" style="width: 150px" ></td>
				<td class="subfont">마감일</td>
				<td><input type="date" name="StudyEndDate"  class="form-control"  style="width: 150px" ></td>
			</tr>
			<tr>
				<td></td>
				<td colspan="4"><label>스터디기간은 최소 2주, 최대6개월까지 가능</label></td>	
			</tr>
			<tr>
				<td class="subfontstyle" >목표분야</td>
					<td class="form-inline">
					<select name="targetTestName"  class="form-control" >
						<option>어학시험</option>			
						<option>Toeic</option>
						<option>Opic</option>
						<option>수능영어</option>
						<option>생활영어</option>
						<option>기타</option>
					</select></td>
				<td colspan="3"><input type="text"  class="form-control"  name="" placeholder="기타선택시" style="width: 100px">
				<input type="text"  class="form-control"  name="targetScore" placeholder="목표점수" style="width: 100px"></td>
			</tr>
			<tr>
				<td><input type="button" id="insertWord" value="단어 입력" class="btn btn-default"></td>
				<td class="subfont">하루할당량</td>
				<td colspan="3"><input type="text" name="dailyWordCount" class="form-control" style="width: 100px"></td>
			</tr>
			<tr>
				<td></td>		
				<td colspan="4">
					<label>파일을 첨부하지 않을 경우 기본 단어를 제공합니다.</label>
				</td>
			</tr>
			<tr>
				<td class="subfontstyle" >모임소개</td>
				<td colspan="4"><textarea class="form-control" cols="60" rows="10" name="groupIntrodution" style="resize: none"></textarea></td>
			</tr>
			<tr>
			<td colspan="5" style="text-align: center;"><input  type="submit" class="btn btn-default"  value="확인">　　　<button class="btn btn-default" >취소</button></td>
			</tr>
		</table>
		<jsp:include page="insertWord.jsp"/>
			</div>
	</form>

</body>
</html>