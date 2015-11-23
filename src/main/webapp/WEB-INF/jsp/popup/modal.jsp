 <%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="../css/modal.css">

<div class="container">
   <div class="modal fade" id="myModal" role="dialog">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <p class="j_p modal-title">
                  <font class="j_txt">영구해요♬에서 알려드립니다!</font>
               </p>
            </div>
            <div class="modal-body container" style="width: 100%;">
               <img src="../images/modal.jpg"
                  style="width: 100px; height: 100px; margin-left: 250px;">
               <div class="container col-md-6 col-md-offset-3"
                  style="width: 50%; margin: 0px auto;">

                  <div class=arrow_box id="result"></div>
                  <input onclick="location.href='/'" type="button" value="홈으로" class="btn btn-info">
               </div>
            </div>
         </div>

      </div>
   </div>
</div>

