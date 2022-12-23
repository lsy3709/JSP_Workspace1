<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%
		String title = request.getParameter("title");
	%>
	<h3>그냥 디코드 안된 값 출력 해보기</h3>
	<h4> <% out.print(title);%></h4>
	<h3><%=java.net.URLDecoder.decode(title)%></h3>
	Today is :<%=request.getParameter("date")%>
</body>
</html>