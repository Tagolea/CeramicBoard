<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="type"%>
<c:choose>
<c:when test="${type=='web'}">
<div class ="wrap-header-web">
		<a href="#"><img src="images_1/logo.png" alt="IMG-LOGO"></a>
</div>
</c:when>
<c:when test="${type=='mobile'}">
<div class ="wrap-header-mobile">
	<a href="#"><img src="images_1/logo.png" alt="IMG-LOGO"></a>
</div>
</c:when>
</c:choose>