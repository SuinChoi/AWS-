<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>최수인 홈페이지</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   	<style>
		@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700);
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500');
		@import url('https://fonts.googleapis.com/css2?family=Gentium+Book+Basic:ital@1&display=swap');

		body {
  				height: 100%;
  				margin: 0;
			}

		*{
			  
			  font-family:  Poppins,'Noto Sans KR';
			  text-align: center;

		}	
			
			.navigation{
				text-align: center;

			}
			.navigation a{
				margin: 20px;
			}
		img { display: block; margin: 0px auto; }
		</style>
   
</head>
<body>

	<%@ include file ="navigation.jsp" %>
	<div class="main" style="margin-top: 50px;">

		<div class= "container" style="display: flex; width: 1100px; margin: auto;background-color: white; ">	
			<img src="/res/suin.png" style="margin: 0px;" />
			<div style="margin-left: 0px;">			
				<p style="text-align: center; font: normal  bold 100px/1.4em Poppins;margin-bottom: 0"> 
			Hello, there!</p>
				<p style="text-align: left; font: normal normal bold 25px/1.4em avenir-lt-w01_35-light1475496,Poppins; color: #000000; margin-top: 0px;margin-bottom: 0px;">
			I'm Suin Choi. Fingers corssed you all!</p>
			<p style="text-align: left; font: normal normal bold 25px/1.4em avenir-lt-w01_35-light1475496,Poppins; color: #000000; margin-top: 0px;">
			Here's who I am</p>
			</div>	
		</div>

		<div class="fav" style="margin-top: 20px; background-color: #f6f0ea; padding-top: 150px; padding-bottom: 150px;">
			<p style="font: normal bold 35px/1.4em poppins-semibold,Poppins,sans-Montserrat;color: #EF5453; text-align: center; line-height: 1.2em;">What I'm Loving Now</p>
			<p style="color: #888886; font-family: 'Gentium Book Basic', serif; text-align: center; font-size: 20px;">These are the things I've been hooked on these days. <br> Traveling Ballet and Baseball</p>
			<div class="photos" style="display:flex;  width: 1200px; margin: auto;">
				<img src="/res/t.jpg" style="width: 350px; margin: 30px;" />
				<img src="/res/b2.jpg" style="width: 350px; margin: 30px;" />
				<img src="/res/bb.jpg" style="width: 350px; margin: 30px;" />
			
			</div>
		</div>

		<div class="qu" style="background-color: #ef5453; padding-top: 5px; padding-bottom: 5px; ">
			<p style="text-align: center; color: white; letter-spacing: 0.05em; font-size: 28px; font-family: Poppins, 'Noto Sans KR';">"Hoc Quoque Transibit"</p>
			<p style="text-align: center; color: white; font: normal 20px bold, Poppins,sans-serif;">Solomon</p>
		</div>

		<div class="latest" style="background-color: white;padding-top: 150px;">			
				<p style="font: normal bold 35px/1.4em Poppins;color: #EF5453; text-align: center; line-height: 1.2em;">Latest Posts</p>
				<div class="l1" style="margin-bottom: 25px; width: 640px; margin: auto;">
					<img src="/res/ba1.jpg" alt="" style="text-align: center;">
					<p style="font-size: 22px; margin: 0;"  >Grand Jete : 발레에 대한 로망과 현실 </p>
					<p style="font-size: 12px;  margin: 0;" >유연성 제로가 도전하는 그랑제떼. 옷떼에서 벗어날 수 있을까?..</p>
				</div>
				<div style="display: flex; width: 680px; margin: auto;">
				<div class="l2" style="margin: 20px;">
					<img src="/res/doo.jpg" alt="" style="text-align: center; width: 300px;">
					<p style="font-size: 16px; margin: 0;"  >두산베어스 그리운 2016 선수들 </p>				
				</div>
				<div class="l2"  style="margin: 20px;">
					<img src="/res/mo.jpg" alt="" style="text-align: center; width: 300px;">
					<p style="font-size: 16px; margin: 0;"  >충격과 공포 in 모로코</p>				
				</div>
			</div>

		</div>

	</div>

	<div class="footer" style="color: white; background-color: #333333; padding: 20px; margin-top: 100px;display: flex;" >
		<div class="footer1" style="width:300px;" >
			<h3>안녕하세요</h3>
			<p>"최수인 홈페이지 입니다 :)"</p>
			<p>+82)10-6357-5824</p>
			<p>suin630@gmail.com</p>
		</div>
		<div class="copyright"  style="width:300px;">
			<h3>NAVIGATION</h3>
			<ul>
				<li>HOME</li>
				<li>ABOUT</li>
				<li>LOVE IT!</li>
			</ul>
		</div>
		<div class="copyright" style="margin-left: 20px; width:300px;"><h3>copyright SUIN CHOI</h3></div>
	</div>
</body>
</html>
