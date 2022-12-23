<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<p>	아이디 : <%=request.getParameter("id")%>
	<%
		String name = request.getParameter("name");
	%>
	<p>	이 름 : <%=java.net.URLDecoder.decode(name)%>
	<h3>그냥 디코드 안된 값 출력 해보기</h3>
	<h4> <% out.print(name);%></h4>
</body>
</html>