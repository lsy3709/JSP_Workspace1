<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
<!-- 스프링에 컨테이너 개념이 있음. 객체 생성시 컨테이너 등록해서, 가져다 사용하는 방식으로 변경됨.  -->
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request" />
	<p>	아이디 : <%=person.getId()%>
	<p>	이 름 : <%=person.getName()%>
</body>
</html>