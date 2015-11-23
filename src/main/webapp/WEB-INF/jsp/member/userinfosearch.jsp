<%@ page contentType="text/html; charset=utf-8"%>

<link href="../css/login.css" rel="stylesheet" type="text/css">

<script>
	$(function(){
		$("#pwFind").click(function(event){
			 $("#myModal").modal();
		});
		
	});


</script>

<div class="modal fade" id="lostModal" role="dialog">
<jsp:include page="../popup/modal.jsp"/>
<div class="modal-dialog">
<div style="background-color: #6D429E">
<button type="button" class="close" data-dismiss="modal" >&times;</button>
<font style="size:15 ;color: white;">　U S E R I N F O</font>
			<table class="table" style="width: 100%">
				<tr>
					<td colspan="3" class="header" style="text-align: center">아이디 찾기</td>
				</tr>
				<tr>
					<td class="fontstyle">이름</td>
					<td><input type="text" class="form-control" ></td>
					<td><input type="button" class="btn btn-default btn-block"  value="아이디찾기" ></td>
				</tr>
				<tr>
					<td class="fontstyle">전화번호</td>
					<td><input type="text"  class="form-control" ></td>
					<td><input type="button" class="btn btn-default btn-block" value="취소"></td>
				</tr>
				
				<tr>
					<td colspan="3" class="header" style="text-align: center"  >비밀번호찾기</td>
				</tr>
				<tr>
					<td class="fontstyle">아이디</td>
					<td><input type="text"  class="form-control"></td>
					<td><input type="submit" class="btn btn-default btn-block" value="비밀번호찾기" id="pwFind">
				</tr>
				<tr>
					<td class="fontstyle">이름</td>
					<td><input type="text"  class="form-control"></td>
					<td><input type="button"  class="btn btn-default btn-block" value="취소" ></td>
				<tr>	
				<td colspan="3"><input type="button" class="btn btn-default btn-block" value="닫기" data-dismiss="modal" style="float: right"></td>
				</tr>				
					</table>
				</div>
			</div>
		</div>
