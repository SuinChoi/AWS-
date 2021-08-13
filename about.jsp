<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html>
<html>
<head>
	<title>About</title>
	 <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
	<style type="text/css">
		@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700);
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500&family=Poppins:wght@500&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Gentium+Book+Basic:ital@1&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Noto+Serif+KR&display=swap');
		*{
			  font-family: 'Noto Sans KR', Poppins, sans-serif;
			text-align: center;
		}
		body{
			background-image: linear-gradient(to left, #ffffff 60%,  #e6dace 40%);
			margin: 0;
			width: 100%;
		}
		.box {
    		width: 220px;
    		height: 220px; 
    		border-radius: 70%;
    		overflow: hidden;
    		margin: auto;
		}
		.profile {
   	 		width: 100%;
   	 		height: 100%;
    		object-fit: cover;
    		box-shadow:0 0px 10px 4px rgba(57,86,113,.24);
		}
		.prof{
			display: flex;
			margin: auto;
			width: 870px;
			box-shadow: 0 4px 10px 0 rgba(57,86,113,.24);
			background-image: linear-gradient(to left, #ffffff 60%,  #f6f0ea 40%);
			margin-top: 200px;
		}

	</style>
</head>
<body>
		
<%@ include file="navigation.jsp"%>

<div class="prof">
	<div style="width: 330px;">
	<div class="box" style="background: #cecece;margin-top: 30px;">		
			<img class="profile" src="res/suin.png" style="width: 280px; ">		
		</div>
		<p style="font-weight: bold; font-size: 20px;">최수인<br>Suin Choi</p>
		<!--
		<div style="background-color: #ffffff; display: flex; width: 348px;">
			<div>1</div>
			<div>1</div>
			<div>1</div>
		</div>
	-->
	</div>
		
		<div style="margin-left: 50px;">			
				<p style="text-align: left; font: bold 70px/1.4em Poppins;margin-bottom: 0"> 
			Hello!</p>
			<br>
				<p style="text-align: left; font-family: 'Noto Serif KR', serif; margin-top: 0px;margin-bottom: 0px;">
			방문해주셔서 감사합니다!<br>
			 저는 최수인입니다.
			<br>
			1997년 6월 30일 생이며
			<br>현재 한국산업기술대 컴퓨터공학부 소프트웨어 전공 4학년 입니다.
		<br>
			<br>
			즐거운 시간 보내세요 :)
			

	</div>

</body>
</html>
