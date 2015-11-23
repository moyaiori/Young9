<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div style=" height: 30px; margin-top: 30px; float:right; padding-right: 30px" >

	
	<c:choose>
			<c:when test="${cookie.loginInfo == null}">
				 <a id="login" class="btn btn-default">로그인</a>　　
				 <a class="regist btn btn-default">회원가입</a>
			</c:when>
			<c:when test="${cookie.loginInfo != null}">
				<script>
				</script>
				 <a id="logout" class="btn btn-default">로그아웃</a>　　　
  				 <a id="myinfo" class="btn btn-default">나의 정보보기</a>
			</c:when>
	</c:choose>


   <jsp:include page="../member/login.jsp"/>
   <jsp:include page="../member/userinfosearch.jsp"/>
	
</div>