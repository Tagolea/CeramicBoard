<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="ham" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<%-- 언어설정 변경 --%>
<html lang="ko">
<head>
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" sizes="96x96"
	href="images_1/favicon-96x96.png">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<link rel="stylesheet" href="css_1/NewFile.css">

</head>
<body class="animsition">

	<div id="wrapper">

		<!-- Header -->
		<header class="header-v4">
			<!-- Header desktop -->
			<div class="container-menu-desktop">
				<!-- Topbar -->
				<div class="top-bar">
					<div class="content-topbar flex-sb-m h-full container">
						<div class="left-top-bar" style="padding-left:1100px;">
							<spring:message code="message.login.hello" />
						</div>
					</div>
				</div>
				<div class="wrap-menu-desktop">
					<nav class="limiter-menu-desktop container">

						<!-- Logo desktop -->
						<a href="login.do" class="logo"> <img src="images_1/logo.png"
							alt="IMG-LOGO">
						</a>

						<!-- Menu desktop -->
						<div class="menu-desktop"></div>

					</nav>
				</div>
			</div>

			<!-- Header Mobile -->
			<div class="wrap-header-mobile">
				<!-- Logo moblie -->
				<div class="logo-mobile">
					<a href="login.do"><img src="images_1/logo.png" alt="IMG-LOGO"></a>
				</div>




			</div>




		</header>


		<%-- ////////////////////////////////////작업/////////////////////////// --%>
		<!-- Title page -->
		<section class="bg-img1 txt-center p-lr-15 p-tb-92"
			style="background-image: url('http://www.busan.com/nas/wcms/wcms_data/photos/2019/11/04/2019110417141390550_l.jpg');">
			<h2 class="ltext-105 cl0 txt-center">
				<spring:message code="message.login.title" />
			</h2>
		</section>


		<!-- Content page -->
		<section class="bg0 p-t-104 p-b-116">
			<div class="container" id="contentWrap">
				<div class="bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg">

					<%-- 로그인버튼 누르면 입력된 내용 그대로 contoller에 전달, 이후 반환받은 화면 출력 --%>

					<form action="login.do" method="post">
						<h4 class="mtext-105 cl2 txt-center p-b-30">
							<spring:message code="message.login.hello" />
						</h4>
						<spring:message code="message.login.id" />
						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								type="text" name="id" placeholder="아이디 입력" value="${user.id }"
								required>
						</div>
						<spring:message code="message.login.pw" />
						<div class="bor8 m-b-30">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								type="password" name="password" placeholder="비밀번호 입력"
								value="${user.password }" required>
						</div>

						<input type="submit"
							class="m-b-30 flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer"
							value='<spring:message code="message.login.login" />'>

					</form>
					<%--=======================리스트====================== --%>
					<div id="listWrap" class="m-b-40">
						<ul id="findlist">
							<li><a href="signup.do"> <spring:message
										code="message.login.signup" />
							</a></li>
						</ul>
					</div>
					<div id="listWrap" class="m-b-40">
						<ul>
							<li><a href="login.do?lang=ko">한국어</a></li>
						</ul>
						&nbsp&nbsp | &nbsp&nbsp
						<ul>
							<li><a href="login.do?lang=en">English</a></li>
						</ul>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- Footer -->
	<footer class="bg3 p-t-32 p-b-32">
		<div class="container">
			<p class="stext-107 cl6 txt-center">
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				Copyright &copy;
				<script>
					document.write(new Date().getFullYear());
				</script>
				All rights reserved | Made with <i class="fa fa-heart-o"
					aria-hidden="true"></i> by <a href="https://colorlib.com"
					target="_blank">Colorlib</a> &amp; distributed by <a
					href="https://themewagon.com" target="_blank">ThemeWagon</a>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</p>
		</div>
	</footer>


	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script src="js/main.js"></script>
	<!--=========================================추가====================================================-->
	<script src="js_1/select2.js"></script>
	<script src="js_1/scroll.js"></script>

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="js_1/api_snsLogin.js"></script>
	<script src="js_1/api_weather.js"></script>

</body>
</html>
