<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Crete+Round:ital@0;1&family=Noto+Sans+Glagolitic&display=swap"
	rel="stylesheet">
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
}

main {
	height: calc(100vh - 70px - 70px);
	width: 100%;
	background-image: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%,
		rgba(9, 9, 121, 1) 35%, rgba(0, 212, 255, 1) 100%);
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
}

form {
	border: 2px solid black;
	height: 60%;
	width: 20%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	box-sizing: border-box;
	font-family: Noto Sans Glagolitic;
	border-radius: 10px;
	flex-direction: column;
	background: white;
	color: black
}

.firstdiv {
	height: 28%;
	width: 100%;
	background: orange;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	gap: 5px;
	border-top-right-radius: 10px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

table {
	height: 100%;
	width: 90%;
	padding: 10px;
}

td {
	font-weight: 700;
}

input {
	padding: 7px;
	border: 1px solid black;
	outline: 1px solid black;
	border-radius: 5px;
	width: 100%;
	box-sizing: border-box;
}

input [placeholder] {
	font-family: unset;
	color: red;
}

#submit {
	background: #2370f4;
	color: white;
	font-family: sans-serif;
	font-weight: bold;
	letter-spacing: 2px;
	border-radius: 15px;
	width: 100%;
	border: 1px solid blue;
	padding: 10px 0;
	font-size: 16px
}

#submit:active {
background: black;
}

.logmsg {
	color: black;
}
</style>
</head>

<body>
	<%--- Header Section --%>
	<%@ include file="./Header.jsp"%>

	<%--- Main Section --%>
	<main>
		<form action="login" method="get">
			<div class="firstdiv">
				<p>
					<i class="fa-solid fa-user" style="font-size: 18px"></i>
				</p>
				<h3
					style="font-family: arial; text-transform: uppercase; word-spacing: 4px">Login
					Page</h3>

				<%-- Login Message --%>
				<%!String loginmsg;%>
				<%
				loginmsg = (String) session.getAttribute("login_successful_msg");
				if (loginmsg != null) {
				%>
				<div class="logmsg">
					<p
						style="color: red; font-weight: 600; background: lightgreen; padding: 3px; border-radius: 3px; font-family: unset; font-size: 15px; text-transform: capitalize;"><%=loginmsg%></p]>
				</div>
				<%
				session.removeAttribute("login_successful_msg");
				}
				%>

				<%-- Error Message --%>
				<%!String errormsg;%>
				<%
				errormsg = (String) session.getAttribute("error_msg");
				if (errormsg != null) {
				%>
				<div class="errormsg">
					<p
						style="color: red; font-weight: 600; background: lightgreen;  padding: 3px; border-radius: 3px; font-family: unset; font-size: 15px; text-transform: capitalize; "><%=errormsg%></p>
				</div>
				<%
				session.removeAttribute("error_msg");
				}
				%>
				
				<%-- Logout Message --%>
				<%!String logoutmsg;%>
				<%
				logoutmsg = (String) session.getAttribute("logoutmsg");
				if (logoutmsg != null) {
				%>
				<div class="logout">
					<p
						style="color: red; font-weight: 600; background: lightgreen;  padding: 3px; border-radius: 3px; font-family: unset; font-size: 15px; text-transform: capitalize; "><%=logoutmsg%></p>
				</div>
				<%
				session.removeAttribute("logoutmsg");
				}
				%>
			</div>
			<table>
				<tr>
					<td>Email Address :</td>
				</tr>
				<tr>
					<td><input type="email" name="email" required
						placeholder="Enter email" /></td>
				</tr>
				<tr>
					<td>Password :</td>
				</tr>
				<tr>
					<td><input type="password" name="password" required
						placeholder="Password" /></td>
				</tr>
				<tr>
					<td><button type = "submit" id = "submit">Login</button></td>
				</tr>
			</table>
		</form>
	</main>

	<%--- Footer Section --%>
	<%@ include file="./Footer.jsp"%>
</body>
</html>