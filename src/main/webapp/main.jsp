<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>MAIN</title>
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

	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar"></div>

					<div class="right-top-bar flex-w h-full">
						<div class="flex-c-m trans-04 p-lr-25" style="magin-right: 50px;">
							<img id="wicon" style="height: 35px;">
							<h5 style="display: inline">
								<span id="tempr"></span>
							</h5>
							<span id="city"></span>
						</div>
						<a href="mypage.jsp"
							class="flex-c-m trans-04 p-lr-25"><spring:message
								code="message.top.mypage" /></a> <a href="logout.do"
							class="flex-c-m trans-04 p-lr-25"><spring:message
								code="message.top.logout" /></a>
					</div>


				</div>
			</div>
			<div class="wrap-menu-desktop">
				<nav class="limiter-menu-desktop container">

					<!-- Logo desktop -->
					<a href="main.do" class="logo"> <img src="images_1/logo.png"
						alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop"></div>

					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div
							class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
					</div>
				</nav>
			</div>
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->
			<div class="logo-mobile">
				<a href="main.do"><img src="images_1/logo.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div
					class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>
			</div>
	</div>
			



		<!-- Modal Search -->
		<div
			class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button
					class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form class="wrap-search-header flex-w p-l-15" action="main.do"
					method="post">
					<div style="float:left; width:10%; padding-top:45px;">
							<select name="searchCondition">
									<c:forEach var="v" items="${conMap}">
										<option value="${v.value}">${v.key}</option>
									</c:forEach>
							</select>
					</div> 
					<div style="float:left; width:90%; padding-top:15px">		
							 <input type="text" name="searchKeyword"> 
					</div>
			
					<input	style="padding-top : 40px; padding-left : 10%; cursor:pointer;"
							type="submit" value='<spring:message code="message.main.search" />'>
			
				</form>
			</div>
		</div>
	</header>

	<%-- /////////////////////////////////작업/////////////////////////////// --%>
	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('http://www.busan.com/nas/wcms/wcms_data/photos/2019/11/04/2019110417141390550_l.jpg');">
		<h2 class="ltext-105 cl0 txt-center">
			<spring:message code="message.main.ttitle" />
		</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-62 p-b-60">

		<div class="flex-r m-r-40">
			<a href="insertBoard.jsp"
				class="m-b-40 flex-c-m stext-101 cl0 size-104 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
				<spring:message code="message.main.insertBoard" />
			</a>
		</div>

		<div class="container p-lr-300">

			<div class="p-b-80 p-lr-40">

				<!-- item blog -->

				<c:forEach var="v" items="${datas}">
					<div class="p-b-70 p-t-20">

						<a href="board.do?bid=${v.bid}" class="hov-img0 how-pos5-parent">
							<img src="images/${v.filename }" alt="IMG-BLOG">
						</a>

						<div class="p-t-32">
							<h4 class="p-b-15 fs-40">
								<a href="board.do?bid=${v.bid}"
									class="ltext-108 cl2 hov-cl1 trans-04"><b>${v.title}</b></a>
							</h4>

							<%-- adatas에 저장된 atext, 부모요소보다 크면 hidden --%>
							<p id="atextWrap" class="stext-117 cl6">${v.content}</p>

							<div class="flex-w flex-sb-m p-t-18">
								<span class="flex-w flex-m stext-111 cl2 p-r-30 m-tb-10">
									<span> <span class="cl4">By</span> ${v.writer}<%-- 작가이름 --%>
										<span class="cl12 m-l-4 m-r-6">|</span>
								</span>


								</span> <a href="board.do?bid=${v.bid}"
									class="stext-101 cl2 hov-cl1 trans-04 m-tb-10"> <b><spring:message code="message.main.readmore"/></b>
									<i class="fa fa-long-arrow-right m-l-9"></i>
								</a>
							</div>

						</div>
					</div>
					<hr>
				</c:forEach>
				<p class="txt-center m-t-60">피드의 마지막 입니다.</p>
			</div>
		</div>
	</section>

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
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!--=========================================추가====================================================-->
	<script src="js_1/select2.js"></script>
	<script src="js_1/scroll.js"></script>

	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script src="js_1/api_snsLogin.js"></script>
	<script src="js_1/api_weather.js"></script>

</body>
</html>
