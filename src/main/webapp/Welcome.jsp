<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	outline: none;
	border: none;
}

html, body {
	height: 100vh;
	width: 100vw;
	background: linear-gradient(132deg, rgb(249, 202, 120) 0.00%,
		rgb(212, 206, 169) 50.00%, rgb(172, 192, 191) 100.00%);
	display: flex;
	justify-content: center;
	align-items: center;
}

#firstdiv {
	height: 40%;
	width: 30%;
	border: 5px solid black;
	border-radius: 10px;
	background: white;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	background: linear-gradient(lightgreen, white, lightblue);
	gap: 30px;
	font-family: arial;
}

#secdiv {
	display: flex;
	justify-content: flex-start;
	align-content: center;
	flex-direction: column;
	width: 95%;
	gap: 10px;
}

#button {
	background: #2370f4;
	padding: 10px;
	color: white;
	border: 2px solid white;
	border-radius: 5px;
	font-family: sans-serif;
	font-size: 17px;
	font-weight: 600;
}

#button:active {
	background: black;
}
</style>
</head>
<body>

	<form id="firstdiv" action="LogoutServlet">
		<%!String email;
	String password;%>
		<%
		email = (String) session.getAttribute("email");
		password = (String) session.getAttribute("password");
		%>
		<h1>Welcome</h1>
		<div id="secdiv">
			<h3 style="color: green;">
				Email =>
				<%=email%></h3>
			<h3 style="color: black;">
				Password =>
				<%=password%></h3>
		</div>

		<div id="logout">
			<button id="button" type="submit">Logout</button>
		</div>
	</form>

</body>
</html>