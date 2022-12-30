<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			// 반복문으로 각각의 쿠키의 유효시간을 0으로 설정해서, 삭제하기. 설정. 
			cookies[i].setMaxAge(0);
			// 반드시, 응답 객체에 적용해야함. 
			response.addCookie(cookies[i]);
		}
		// 이 페이지는 삭제 후, 조회하는 페이지 2번으로 강제 이동. 
		response.sendRedirect("cookie02.jsp");
	%>
</body>
</html>