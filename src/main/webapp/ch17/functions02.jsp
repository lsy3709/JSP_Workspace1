<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<c:set var="texts" value="${fn:split('Hello, Java Server Pages!', ' ')}" />
	<c:forEach var="i" begin="0" end="${fn:length(texts)-1}">
		<p>text[${i}] =${texts[i]}
	</c:forEach>
	<p><c:out value="${fn:join(texts, '-')}" />
</body>
</html>

