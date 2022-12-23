<html>
<head>
<title>Scripting Tag</title>
</head>
<body>
	<% 
	// 여기 변수들은 지역 변수 역할을 한다. 
	// jsp 생명주기에서 _jspService() 메서드 내부에서 동작하므로. 
	// 지역 변수들의 효력범위.
		int a = 2;
		int b = 3;
		int sum = a + b;
		out.println("2 + 3 = " + sum);
	%>
</body>
</html>