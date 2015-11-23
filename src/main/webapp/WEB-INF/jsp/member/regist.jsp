<%@ page contentType="text/html; charset=utf-8" %>
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap-theme.min.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css">
<link rel="stylesheet" type="text/css" href="style/bootstrap.css.map">
<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../style/header.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
  var elmSelect = $('#email3');
  var elmTarget = $('#email1');
  
  elmSelect.bind('change', null, function() {
   
   var host = this.value;
   if (host != 'etc' && host != '') {
    elmTarget.attr('readonly', true);
    elmTarget.val(host).change();
   }else if (host == 'etc') {
    elmTarget.attr('readonly', false);
    elmTarget.val('').change();
    elmTarget.focus();
   } else {
    elmTarget.attr('readonly', true);
    elmTarget.val('').change();
   }
  });
  
  var elmSelectLang = $('#lang1');
  var elmTargetLang = $('#lang2');
  
  elmSelectLang.bind('change', null, function() {
   
   var host = this.value;
   if (host != 'etc' && host != '') {
    elmTargetLang.attr('readonly', true);
    elmTargetLang.val(host).change();
   }else if (host == 'etc') {
    elmTargetLang.attr('readonly', false);
    elmTargetLang.val('').change();
    elmTargetLang.focus();
   } else {
    elmTargetLang.attr('readonly', true);
    elmTargetLang.val('').change();
   }
  });
 });
    
 $(function(){
  $("#joinBtn").click(function(event){
   
   var email = $("#eamil0").val()+"@"+$("#email1").val();
   var nickname = $("#nickname").val();
   var name= $("#name").val();
   var passwd = $("#pa1").val();
   var phoneNumber = $("#phoneNumber").val();
   var phoneNumber2= $("#phoneNumber2").val();
   var phoneNumber3= $("#phoneNumber3").val();
   var introdution= $("#introdution").val();
   var birth= $("#birth").val();
   var targetScore= $("#targetScore").val();
   var testName= $("#lang2").val();
   
   
    var info = {email:email, passwd:passwd,
      nickname:nickname, name:name,
      passwd:passwd,phoneNumber:phoneNumber,
      phoneNumber2:phoneNumber2,phoneNumber3:phoneNumber3,
      introdution:introdution,birth:birth,
      targetScore:targetScore,testName:testName
   };
    
   
     $.ajax({
    type : "post",
    url : "/member/registdb",
    data: info,
    success : function(message) {
     $("#result").html(message);
     $("#myModal").modal();
    },
    error : function(xhr, status, error){ //콜백함수 형식으로 에러가 났을경우 404 , 500등을 처리해주는부분.
        alert(xhr + "("+xhr.status+", "+error+")");
       }
    }); 
  });  
  
 });
    
</script>
<div class="container col-md-8 col-md-offset-2">
<jsp:include page="../popup/modal.jsp"/>
  <p class="j_p">
    <font class="j_txt">J </font>O I N</p>
 <!-- <form action="/member/registdb" method="post" id="addjoin"> -->
  <table class="table">
   <colgroup>
     <col width="100" />
     <col width="200" />
    </colgroup>
    
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">Email</td>
    <td><input type="text" class="email1" id="eamil0">
    
    <font style="font-size: 20px; font-weight:bold; vertical-align: middle;"> @ </font>
    
    <select class="email-control" id="email3" >
     
     <option value="etc">선택</option>
     <option id= "option1" value="naver.com">naver.com</option>
     <option value = "hotmail.com">hotmail.com</option>
     <option value="nate.com" >nate.com</option>
     <option value="gmail.com">gmail.com</option>
     <option value="etc">직접입력</option>
    </select>
    
    <input type="text" class="email-control"  id="email1" >
    <span id="emailmessageBox"></span></td>
   </tr>
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">비밀번호</td>
    <td><input type="password" class="form-control" id="pa1"></td>
   </tr>
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">비밀번호확인</td>
    <td><input type="password" class="form-control" ><span id="passwdCheckmessageBox"></span></td>
   </tr>
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">이름</td>
    <td><input type="text" class="form-control"  id="name"></td>
   </tr>
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">닉네임</td>
    <td><input type="text" class="form-control" id="nickname"></td>
   </tr>
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">생년월일</td>
    <td><input type="date" class="form-control"  id="birth" ></td>
   </tr>
 
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">연락처</td>
    <td class="form-inline">
     <div class="form-group">
     <select class="form-control" name="phoneNumber"  id="phoneNumber">
      <option>010</option>
      <option>011</option>
      <option>017</option>
      <option>019</option>
      <option>070</option>
     </select>
    　-　<input type="text"  size="8" class="form-control" id="phoneNumber2">
    　-　<input type="text"  size="8" class="form-control"  id="phoneNumber3">
    </div>
    </td>
   </tr>
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">목표</td>
    
    <td class="form-inline">
     <div class="form-group">
     <select id="lang1" class="form-control" >
      <option value="etc">선택</option>
      <option value="Toeic">Toeic</option>
      <option value="Opic">Opic</option>
      <option value="생활영어">생활영어</option>
      <option value="수능영어">수능영어</option>
      <option value="etc">기타</option>
     </select>
    <input type="text"  size="8" class="form-control" id="lang2" >　
    <font style="font-size: 12px;  vertical-align: middle;">  </font>
   
    <font style="font-size: 12px;  vertical-align: middle;">  </font>
    <input type="text"  size="3" class="form-control"  id="targetScore" placeholder="목표점수">
    <font style="font-size: 12px; vertical-align: middle;">점</font>　
    </div>
    </td>
   </tr>
   
   
   <tr>
    <td style="text-align:center; vertical-align: middle; font-size: 14px; font-weight:bold">자기소개</td>
    <td><textarea class="form-control" style="resize: none" rows="5" id="introdution"></textarea></td>
   </tr>
 
   <tr>
   <td></td>
   <td><input type="submit" value="회원가입" class="btn btn-info"  id="joinBtn" >　　
   <input onclick="location.href='/'" type="button" value="홈으로" class="btn btn-info"></td>
   </tr>
  </table>
 <!-- </form> -->
</div>