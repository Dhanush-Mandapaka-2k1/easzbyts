<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	padding: 50px;
}

table {
	margin: auto;
	background: white;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
}

caption {
	font-size: 1.2em;
	font-weight: bold;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<form action="login" method="post">
		<table>
			<tr>
				<th colspan="2" align="center"
					style="font-family: Verdana; text-decoration: underline;">Login</th>
			</tr>
			<tr>
				<td colspan="2" align="center" style="color: red; font-size: small;">
					<c:if test="${not empty message}">
                        ${message}
                    </c:if>
				</td>
			</tr>
			<tr>
				<td><label for="username">Username</label></td>
				<td><input type="text" name="username" id="username"
					required="required"></td>
			</tr>
			<tr>
				<td><label for="password">Password</label></td>
				<td><input type="password" name="password" id="password"
					required="required"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Login"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="addUser">New User</a></td>
			</tr>
		</table>
	</form>
</body>
</html>
