<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="type"%>

<c:if test="${type=='commu'}">
	<c:if test="${user.id!=null}">
		<div class="flex-r m-r-40">
			<a href="commu-insert.jsp"
				class="m-b-40 flex-c-m stext-101 cl0 size-104 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">글쓰기</a>
		</div>
	</c:if>
</c:if>
