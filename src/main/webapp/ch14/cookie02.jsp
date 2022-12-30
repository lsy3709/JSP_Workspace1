<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Cookie</title>
</head>
<body>
	<% 
	/* 이 코드는 해당 객체를 조회하는 샘플 코드 */
	/* 웹 브라우저에 저장된 모든 쿠키를 불러와서, 배열에 담기. getCookies()의 반환값 형식이 배열이라서,
	받을 때 배열로 */
		Cookie[] cookies = request.getCookies();
		out.println("현재 설정된 쿠키의 개수 => " + cookies.length + "<br>");
		out.println("==========================<br>");
		for (int i = 0; i < cookies.length; i++) {
			out.println("설정된 쿠티의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("---------------------------------------------<br>");
		}
	%>
</body>
</html>