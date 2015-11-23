<%@ page contentType="text/html; charset=utf-8"%>
<style>
.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0; // remove the gap so it doesn't close
 }
 
 .dropdown-menu{
 	left: 210px;
 	top: 0%;
 }
 
 .dropdown-menu > a:HOVER{
 background-color: red;
 }
 
</style>

<link href="../css/login.css" rel="stylesheet" type="text/css">

<div class="container"  style="background-color:#6D429E ;margin: 0px; padding: 0px;  width: 20%; min-height: 1000px ; height: 100% ;float: left;">
  <h3>영구해요♬</h3>
  <h5>영어 공부하는사람 구해요♬</h5>
 
  <ul class="nav nav-pills nav-stacked" style="padding-top: 40px">
    <li><a data-toggle="pill" href="#" class="fontstyle">사이트 소개</a></li>
    <li><a data-toggle="pill" id="notice" href="#" class="fontstyle">공지사항</a></li>
    <li><a data-toggle="pill" id="studysearch" href="#" class="fontstyle">모임찾기</a></li>
    <li><a data-toggle="pill" id="studycreate" href="#" class="fontstyle">모임만들기</a></li>
  	<li class="dropdown">
  	 	<a href="#" class="fontstyle">내 모임</a>
  	 	<ul class="dropdown-menu hoverClass">
  	 		<li><a id="quizlist" class="subfontstyle" >문제 보기</a></li>
  	 		<li><a id="setquiz" class="subfontstyle">문제 내기</a></li>
  	 		<li><a id="todayquiz" class="subfontstyle">문제 풀기</a></li>
  	 		<li><a id="viewrecord" class="subfontstyle">성적 보기</a></li>
  	 		<li><a id="studyboard" class="subfontstyle">게시판</a></li>
  	 		<li><a id="studyinfo" class="subfontstyle">상세보기</a></li>
  	 		<li><a id="exit" class="subfontstyle">탈퇴</a></li>
  	 		<li><a id="kick" class="subfontstyle">강퇴</a></li>
  	 	</ul>
  	 </li>
  </ul>
</div>