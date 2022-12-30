<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/WebMarketDB"
		driver="com.mysql.jdbc.Driver" user="root" password="1234" />

<!-- preparedStatement 동적쿼리, 파라미터에 값을 넣을 때, 인덱스 번호의 개념의 시작 :1 부터.  -->
	<sql:update dataSource="${dataSource}" var="resultSet">
		UPDATE member2 SET name =?  where id =? and passwd =?
		<sql:param value="<%=name%>" />
		<sql:param value="<%=id%>" />		
		<sql:param value="<%=passwd%>" />		
	</sql:update>
	<!-- 해당 url 주소를 가져와서 보여주는 역할 -->
	<c:import var="url" url="sql01.jsp"  />
	${url}
</body>
</html>