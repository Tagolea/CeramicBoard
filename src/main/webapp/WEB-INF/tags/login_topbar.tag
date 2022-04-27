<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ attribute name="type"%>

<c:if test="${user.id != null}">
	<c:choose>
		<c:when test="${type=='mobile'}">
			<div class="right-top-bar flex-w h-full">
				<a href="myPage.do?id=${user.id}"
					class="flex-c-m p-lr-10 trans-04"><spring:message code="message.top.mypage" /></a> <a
					href="logout.do"
					class="flex-c-m p-lr-10 trans-04"><spring:message code="message.top.logout" /></a>
			</div>
		</c:when>
		<c:when test="${type=='web'}">
			<div class="right-top-bar flex-w h-full">
				<div class="flex-c-m trans-04 p-lr-25" style="magin-right: 50px;">
					<img id="wicon" style="height: 35px;">
					<h5 style="display: inline">
						<span id="tempr"></span>
					</h5>
					<span id="city"></span>
				</div>
				<a href="myPage.do?id=${user.id}"
					class="flex-c-m trans-04 p-lr-25"><spring:message code="message.top.mypage" /></a> <a
					 href="logout.do"
					class="flex-c-m trans-04 p-lr-25"><spring:message code="message.top.logout" /></a>
			</div>
		</c:when>
	</c:choose>
</c:if>

<c:if test="${user.id == null}">
	<c:choose>
		<c:when test="${type=='mobile'}">
			<div class="right-top-bar flex-w h-full">
				<a href="login.jsp" class="flex-c-m p-lr-10 trans-04"><spring:message code="message.top.login" /></a> <a
					href="signUp.jsp" class="flex-c-m p-lr-10 trans-04"><spring:message code="message.top.signup" /></a>
			</div>
		</c:when>
		<c:when test="${type=='web'}">
			<div class="right-top-bar flex-w h-full">
				<div class="flex-c-m trans-04 p-lr-25" style="magin-right: 50px;">
					<img id="wicon" style="height: 35px;">
					<h5 style="display: inline">
						<span id="tempr"></span>
					</h5>
					<span id="city"></span>
				</div>
				<a href="login.jsp" class="flex-c-m trans-04 p-lr-25"><spring:message code="message.top.login" /></a> <a
					href="signUp.jsp" class="flex-c-m trans-04 p-lr-25"><spring:message code="message.top.signup" /></a>
			</div>
		</c:when>
	</c:choose>
</c:if>
