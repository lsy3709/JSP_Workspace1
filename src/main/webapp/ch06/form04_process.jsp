<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
	//한글 깨짐 방지 하기 위해서
		request.setCharacterEncoding("UTF-8");

	// 입력 폼에서 받아온 값을 왼쪽 변수에 재할당 부분. 
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		String sex = request.getParameter("sex");
		String hobby1 = request.getParameter("hobby1");
		String hobby2 = request.getParameter("hobby2");
		String hobby3 = request.getParameter("hobby3");
		String comment = request.getParameter("comment");
	%>
	<!-- 스크립트 태그 형식으로 해당 변수의 문자열을 출력하는 방식.  -->
	<p> 아이디 : <%=id%>
	<p>	비밀번호 : <%=passwd%>
	<p>	이름 : <%=name%>
	<p>	연락처 : <%=phone1%>-<%=phone2%>-<%=phone3%>
	<p>	성별 : <%=sex%>
	<p>	취미 : <%=hobby1%> <%=hobby2%> <%=hobby3%>
	<p>	가입 인사 : <%=comment%>
</body>
</html>