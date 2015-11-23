<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="../css/fontstyle.css" rel="stylesheet" type="text/css">
<div class="modal fade" id="wordModal" role="dialog">
	<div class="modal-dialog">
	<div style="background-color: #6D429E ">
		<div class="modal-header" style="padding: 0px; border-bottom: 0px">
		<button type="button" class="close" data-dismiss="modal">&times;</button>
		<font style="size:15 ;color: white;">　WORDS INSERT</font>
		
		<table class=table>
			<tr>
				<th>번호</th>
				<th>단어</th>
				<th>단어 뜻 </th>
				<th><input type="button" class="btn btn-default" id="addWord" value="추가" style="float: right;" ></th>
			</tr>
			<tbody id="wordBody">
			</tbody>
		</table>
	</div>
</div>
</div>
</div>