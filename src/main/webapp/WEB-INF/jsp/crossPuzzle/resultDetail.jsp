<%@ page contentType="text/html; charset=utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

</head>
<style>
.numdiv{
     -moz-border-radius: 10px;  
     -webkit-border-radius: 10px;
        border: 1px solid gray; 
     width: 400px;
    height: 150px;
}
</style>
<body>


<p align="center">
				<font class="j_txt"> 000 채점결과</font><hr></p>
				
<div style="text-align: center;">				
<div class="container" style="margin:0px auto; width:300px; float: left" align="center">
	<h4><img src="../image/형광등.jpg" width='134' height='134' alt="가로 세로" style="width: 31px; height: 28px;"/>000 결과화면입니다</h4>
</div>
<table>
	<tr>
		<td>
			<div class="container"  align="left">
			<h4 style=" margin-left: 101px;" >맞은 영단어</h4>
			<iframe src="length_and_breadth_make_basic.jsp" frameborder="0"  style="width: 482px; height: 150px; margin-right: 26px;  margin-left: 96px;"></iframe>	
		</td>
		<td>
			<div class="numdiv" style="margin:0px auto; margin-top: 49px; margin-right: 283px;" align="center">
				맞은 갯수
			
			</div>
		</td>
	</tr>
		<td>
			<div class="container"  align="left">
			<h4 style="margin-top: 91px; margin-left: 101px;" >틀린 영단어</h4>
			<iframe src="length_and_breadth_make_basic.jsp" frameborder="0"  style="width: 482px; height: 150px; margin-right: 26px;  margin-left: 96px;"></iframe>	
		</td>
		<td>
			<div class="numdiv" style="margin:0px auto; margin-top: 116px; margin-right: 283px;" align="center">
				틀린 갯수
			
			</div>
		</td>
	<tr>
	</tr>
</table>

<br><br>
<div style="margin:0px auto; align="center">
	<button style=" width: 93px; height: 45px;">재  도  전</button> 
	<button style="  width: 93px;  height: 45px;">홈으로 이동</button>
</div>
</div>
</body>
</html>