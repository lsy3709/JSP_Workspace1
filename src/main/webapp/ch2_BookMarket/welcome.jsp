<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>

<body>
	<nav class="navbar navbar-expand  navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
	<%! String greeting = "Book Market Mall";
	String tagline = "Welcome to Web Market!"; %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-4">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<main role="main">
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>			
		</div>
		<hr>
	</div>
	</main>
	<footer class="container">
		<p>&copy; BookMarket</p>
	</footer>
</body>
</html>