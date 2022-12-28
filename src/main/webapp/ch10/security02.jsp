<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Security</title>
</head>
<body>
	<p>	사용자명 :	<%=request.getRemoteUser()%>
	<p>	인증방법 :	<%=request.getAuthType()%>
	<p>	인증한 사용자명이 역할명 "tomcat"에 속하는 사용자인가요?
		<%=request.isUserInRole("tomcat")%>
	<p>	인증한 사용자명이 역할명 "role1"에 속하는 사용자인가요?
		<%=request.isUserInRole("role1")%>  
		<p>	인증한 사용자명이 역할명 "admin"에 속하는 사용자인가요?
		<%=request.isUserInRole("admin")%>  
</body>
</html>