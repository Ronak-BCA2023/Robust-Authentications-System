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
}

header {
	height: 70px;
	width: 100%;
	background-image: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%,
		rgba(9, 9, 121, 1) 35%, rgba(0, 212, 255, 1) 100%);
	color: white;
	display: flex;
	justify-content: center;
	align-items: center;
	border-bottom: 2px solid white;
}

.first {
	height: 100%;
	width: 50%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	font-family: arial;
}

.first .navbar {
	height: 100%;
	width: 40%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.first .navbar-option {
	height: 100%;
	width: 100%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
	gap: 20px;
}

h4 {
	font-family: arial;
	text-transform: uppercase;
	color: lime;
}

a {
	text-decoration: none;
}

h3 {
	font-family: sans-serif;
}

h2 {
	font-weight: bold;
}

.second {
	height: 100%;
	width: 50%;
	display: flex;
	justify-content: flex-end;
	align-items: center;
	gap: 10px
}

.second .serachfiled {
	height: 100%;
	width: 50%;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}

input {
	padding: 10px;
	border: 1px solid black;
	outline: 1px solid black;
	border-radius: 10px;
	width: 100%;
}

input[placeholder] {
	font-family: unset;
	color: blue;
	font-weight: 600;
}

.second .search {
	width: 15%;
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.second .search button {
	padding: 5px 10px;
	border-radius: 5px;
	border: 2px solid black
}
</style>
</head>
<body>
	<header>
		<div class="first">
			<div class="navbar">
				<h2>Navbar</h2>
			</div>
			<div class="navbar-option">
				<a href="./index.jsp"><h4>Home</h4></a> <a href="./Login.jsp"><h4>Login</h4></a>
				<a href="./Register.jsp"><h4>Register</h4></a>
			</div>
		</div>
		<div class="second">
			<div class="serachfiled">
				<input type="text" placeholder="Search here" />
			</div>
			<div class="search">
				<button type="submit">Search</button>
			</div>
		</div>
	</header>
</body>
</html>