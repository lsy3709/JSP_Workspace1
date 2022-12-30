<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	browser 변수 값 설정
	<%-- EL 표기법 ${해당 변수의 값을 가져온다 } --%>
	<%-- <%= 변수의 값을 가져온다.  %> --%>
	<c:set var="browser" value="${header['User-Agent']}" />
	<br>
	<c:out value="${browser}" />
	<p>	browser 변수 값 제거 후
		<c:remove var="browser" />
		<c:out value="${browser}" />
</body>
</html>
