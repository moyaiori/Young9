<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="modal fade" id="wordModal" role="dialog">
	<div class="modal-dialog">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h3>단어 입력창</h3>
		</div>
		<input type="button" id="addWord" value="추가"> 
		<table>
			<tr>
				<th>번호</th>
				<th>단어</th>
				<th>단어 뜻</th>
			</tr>
			
			<tbody id="wordBody">
			</tbody>
		</table>
	</div>
</div>