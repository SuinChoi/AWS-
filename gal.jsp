<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<script>
$(document).ready(function(){
	var slideIndex = 0;
	showSlides();
	function showSlides(){	
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
		}
		slideIndex++;
		if (slideIndex > slides.length) {slideIndex = 1}    
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex-1].style.display = "block";  
			dots[slideIndex-1].className += " active";
   			setTimeout(showSlides, 5000); 
	}
});
	</script>
	
		<style>
		@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700);
		@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500');
		@import url('https://fonts.googleapis.com/css2?family=Gentium+Book+Basic:ital@1&display=swap');


		*{
			  
			  font-family:  Poppins,'Noto Sans KR';
			  text-align: center;

		}	
			
			</style>
	
	<title>최수인 홈페이지</title>
</head>
<body>

	<%@ include file ="navigation.jsp" %>
	<h1 style="text-align:center;">여행 사진</h1>
	<div class="mySlides fade" style="margin:auto; width:880px;text-align:center;">
			<img src="https://2016156041s3.s3.amazonaws.com/images/mo.JPG" style="margin:auto;width:800px;">
			<p>모로코 사하라 사막</p>
		</div>
		<div class="mySlides fade" style="margin:auto; width:880px;text-align:center;">
			<img src="https://2016156041s3.s3.amazonaws.com/images/1454588881658.jpeg" style="margin:auto;width:800px;">
			<p>필리핀 세부 - 스킨스쿠버, 엄마랑</p>
		</div>
	<div class="slideshow-container" style="margin:auto; width:880px;text-align:center;">
		<div class="mySlides fade">
			<img src="https://2016156041s3.s3.amazonaws.com/images/1425288253206.jpeg" style="margin:auto;width:800px;">
			<p>스페인 언니집에서</p>
		</div>		
		<div class="mySlides fade" style="margin:auto; height:900px;text-align:center;">
			<img src="https://2016156041s3.s3.amazonaws.com/images/1498370987343.jpeg" style="margin:auto;height:1000px;">
			<p>호주집 핑구랑 산책</p>
		</div>
		
	</div>
	<br>
	<div style="text-align:center">
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
		<span class="dot"></span> 
	</div>
</body>
</html>
