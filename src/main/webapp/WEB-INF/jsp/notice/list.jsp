<%@page import="kr.or.kosta.binning.young9.common.web.utility.Pagination" %>

<!-- 
   레이아웃 작성자 : 가승호 
   레이아웃 수정최종 날짜 : 2015 -11 -17 : 15시 30분
 -->
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
$(function(){
	$("#write").click(function(){
		$(location).attr('href', "../article/noticewrite");
	});
});
</script>
<p class="j_p" style="margin-bottom: 40px">
				<font class="j_txt">N </font>O T I C E </p>
    <div class="container" style="margin:0px auto" >
		<table class="table" style="width:80%">
                  <colgroup>
                     <col width="75" />
                     <col width="600" />
                     <col width="110" />
                     <col width="130" />
                     <col width="85" />
                  </colgroup>
                  <tr class="active">
                     <th>번호</th>
                     <th>제목</th>
                     <th>작성자</th>
                     <th>작성일</th>
                     <th>조회수</th>
                  </tr>
                  
                  
                  <c:forEach items="${list}" var="article">
					<tr>
						<td>${article.articleId}</td>
						<td>${article.subject}</td>
						<td>${article.writer}</td>
						<td>${article.regdate}</td>
						<td>${article.hitcount}</td>
					</tr>	
				</c:forEach> 
                  
                  
                  
            <!--  
                  <c:if test="${listSize - 1 >= 0}">
                   <c:forEach  begin="0" end="${articleList.size()-1}" var="i">
   						<tr>
   						 <%--  <td>${listSize-i}</td> --%>
   						  <td>${listSize - ((pageNum - 1) *10) - i}</td>
   						    <td class="">
                    		    <a href="../notice/notice_read.bins?articleId=${articleList.get(i).articleId}">${articleList.get(i).subject}</a>
                   		  </td>
                    	  <td><span class="">${articleList.get(i).writer}</span></td>
                   		  <td>${articleList.get(i).regdate}</td>
                    	  <td>${articleList.get(i).hitcount}</td>
  					 	</tr>
   					</c:forEach>
   				  </c:if>-->

               </table>

	  <form class="form-inline" method="post" action="../notice/notice_list.bins" style="width: 100%">
         <div class="form-group" style="width: 100%;">
            <select class="form-control" name="searchType" id="" >
               <option value="subject">제목</option>
               <option value="content">내용</option>
               <option value="member_id">작성자</option>
            </select>
            <input type="text"  class="form-control" style="width:200px;" name="searchValue"  required id="stx" />
 			<input  type="submit" class="btn btn-danger" value="검색"/> 
			<input id="write" onclick="location.href='../notice/write.jsp'" type="button" class="btn btn-danger" value="글쓰기" />
		
         </div>
      </form>
 <div class="text-center">
 <!--   ${pageNation} -->
  </div>
  </div>
