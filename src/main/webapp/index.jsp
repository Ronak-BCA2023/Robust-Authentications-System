<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
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
}
</style>
</head>
<body>
	<%@ include file="./Header.jsp"%>
	<main></main>
	<%@ include file="./Footer.jsp"%>
</body>
</html>