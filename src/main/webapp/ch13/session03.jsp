<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String name;
		String value;

		
		// 여러 객체를 담아 두는 그릇 : Enumeration
		// 보통 반복 패턴을 이용할 때, 주로 사용함. 
		// Iterator 인터페이스, 같은 이유로 사용함.
		
		
		// 복수 개를 불러서, 복수 개로 담았다. 
		Enumeration en = session.getAttributeNames();
		int i = 0;

		// 샘플로 2개의 아이디와 패스워드가 입력된 상태. 
		while (en.hasMoreElements()) {
			// hasMoreElements : 다음 원소가 있나요?
					// 있어요라고 답하면. 
					// nextElement 각원소의 값을 문자열로 출력합니다. 재할당. 
			i++;
			name = en.nextElement().toString();
			// name 이라는 키에 해당하는 값을 불러와서, 문자열로 출력 후, 재할당. 
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성 이름 [ " + i + " ] : " + name + "<br>");
			out.println("설정된 세션의 속성 값 [ " + i + " ] : " + value + "<br>");
		}
	%>
</body>
</html>