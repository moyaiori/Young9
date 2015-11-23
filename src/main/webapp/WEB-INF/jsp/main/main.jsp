<%@ page contentType="text/html; charset=utf-8"%>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="../css/style.css" rel="stylesheet" type="text/css" media="all">
		<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Sorts+Mill+Goudy' rel='stylesheet' type='text/css'>
	</head>
	
	<style>
	#photoShow {
	width:500px;
	height:333px;
/* 	margin:80px auto 10px; */
	padding:20px;
/* 	border:1px solid #333333; */
	}
	#photoShow div {
		position:absolute;
		z-index:0;
	}
		#photoShow div.previous {
		z-index:1;
	}
	#photoShow div.current {
		z-index:2;
	}
	.image{
			background: 50% 50% no-repeat;
	}
	</style>
	<script>
	function rotateImages(){
		var curPhoto = $("#photoShow div.current");
		var nxtPhoto = curPhoto.next();
		if (nxtPhoto.length == 0)
		    nxtPhoto = $("#photoShow div:first");
		curPhoto.removeClass('current').addClass('previous');
		nxtPhoto.css({'opacity': '0.0'}).addClass('current').animate({'opacity': '1.0'}, 1000,
			function(){
				curPhoto.removeClass('previous');
			});
	}
		
	$(function(){
		setInterval("rotateImages()", 5000);	
	});
	
	</script>
	<body>
		<div id="photoShow">
			<div class="current">
				<img src="../images/main1.jpg"  style="width:1000px; height:590px;" alt="Photo gallery01" >
			</div>
			<div>
				<img src="../images/main2.jpg"  style="width:1000px; height:590px;"alt="Photo gallery02">
			</div>	
			<div>
				<img src="../images/main3.jpg"  style="width:1000px; height:590px;"alt="Photo gallery03">
			</div>
			<div>
				<img src="../images/main4.jpg" style="width:1000px; height:590px;" alt="Photo gallery04">
			</div>
			
	
		</div>
	<!-- <script type="text/javascript" src="../js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript" src="../js/img-rotator.js"></script> -->
	</body>
</html>		