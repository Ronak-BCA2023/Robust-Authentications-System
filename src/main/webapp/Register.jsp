<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RegisterPage</title>
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
	height: 70%;
	width: 22%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	box-sizing: border-box;
	background: white;
	color: black;
	font-family: Noto Sans Glagolitic;
	border-radius: 10px;
	flex-direction: column;
}

.firstdiv {
	height: 28%;
	width: 100%;
	background: orange;
	display: flex;
	justify-content: center;
	flex-direction: column;
	gap: 10px;
	align-items: center;
	border-top-right-radius: 10px;
	border-top-left-radius: 10px;
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

#submit {
	background: #2370f4;;
	color: white;
	font-family: sans-serif;
	font-weight: bold;
	letter-spacing: 2px;
	border-radius: 15px;
	border: 1px solid blue;
	padding: 10px 0;
	width: 100%;
	font-size: 16px
}

#submit:active {
	background: black;
}
</style>
</head>
<body>
	<%--- Header Section --%>
	<%@ include file="./Header.jsp"%>

	<main>
		<form action="register" method="get">
			<div class="firstdiv">
				<p>
					<i class="fa-solid fa-user"></i>
				</p>
				<h3
					style="text-transform: uppercase; font-family: arial; word-spacing: 4px">Register
					Page</h3>

				<%-- Successfully Register Message --%>
				<%!String successRegisterMsg;%>
				<%
				successRegisterMsg = (String) session.getAttribute("inserted");
				if (successRegisterMsg != null) {
				%>
				<div class="successfulRegister">
					<p
						style="color: red; font-weight: 600; background: lightgreen; padding: 3px; border-radius: 3px; font-family: unset; font-size: 15px; text-transform: capitalize;"><%=successRegisterMsg%></p>
				</div>
				<%
				session.removeAttribute("inserted");
				}
				%>

				<%-- Failure Register Message --%>
				<%!String failureRegisterMsg;%>
				<%
				failureRegisterMsg = (String) session.getAttribute("not_inserted");
				if (failureRegisterMsg != null) {
				%>
				<div class="successfulRegister">
					<p
						style="color: red; font-weight: 600; background: lightgreen; padding: 3px; border-radius: 3px; font-family: unset; font-size: 15px; text-transform: capitalize;"><%=failureRegisterMsg%></p>
				</div>
				<%
				session.removeAttribute("not_inserted");
				}
				%>

			</div>
			<table>
				<tr>
					<td>Enter Full Name :</td>
				</tr>
				<tr>
					<td><input type="name" name="name" required
						placeholder="Enter Name" /></td>
				</tr>
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
					<td><button type = "submit" id = "submit">Register</button></td>
				</tr>
			</table>
		</form>
	</main>
	<%--- Footer Section --%>
	<%@ include file="Footer.jsp"%>
</body>
</html>