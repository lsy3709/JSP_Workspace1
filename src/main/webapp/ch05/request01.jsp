<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>

<!-- action="request01_process.jsp" : 입력받은 값을 처리하는 페이지 위치.
method="post" : 전달하는 방식. 간단히 get vs post(보안적으로 안전하다.) -->

<!-- type="submit" value="전송" -> 클릭 시 , 해당 <form action 페이지로 값이 전달 됨. -->
	<form action="request01_process.jsp" method="post">
		<p>	아 이 디 : <input type="text" name="id">
		<p>	비밀번호 : <input type="text" name="passwd">
		<p>	<input type="submit" value="전송" />
	</form>
</body>
</html>