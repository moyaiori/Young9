<%@ page contentType="text/html; charset=utf-8"%>
<script type="text/javascript">
function myInfoOnClick(){
	console.log("myInfo");
	window.location.href = "../user/myInfo.bins";
}

function myEditInfoOnClick(){
	console.log("myEditInfo");
	window.location.href = "../user/myCheckPasswd.bins";
}

function myOrderOnClick(){
	console.log("myOrder");
	window.location.href = "../user/orderListView.bins";
}

</script>


<style>

.btn-group button{
	width: 300px;
	height: 40px;
}

</style>


<div class="btn-group button" role="group" style="margin-left: 228px">
  <button type="button" class="btn btn-info" id="myInfo" onclick="myInfoOnClick()">나의 정보</button>
  <button type="button" class="btn btn-info" id="myEditInfo" onclick="myEditInfoOnClick()">정보 수정</button>
  <button type="button" class="btn btn-info" id="myOrder" onclick="myOrderOnClick()">신청한 모임내역</button>
</div>