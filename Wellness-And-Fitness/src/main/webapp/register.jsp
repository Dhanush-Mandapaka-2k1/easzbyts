<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Page</title>
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

.form-error {
	color: red;
	font-size: 0.9em;
}
</style>
</head>
<body>
	<form:form action="registerPage" method="post" modelAttribute="users">
		<table>
			<tr>
				<th colspan="2" align="center"
					style="font-family: Verdana; text-decoration: underline;">Register</th>
			</tr>
			<tr>
				<td colspan="2" align="center" style="color: red; font-size: small;">
					<c:if test="${not empty message}">
                        ${message}
                    </c:if>
				</td>
			</tr>
			<tr>
				<td><form:label for="fullname" path="fullname">Fullname</form:label></td>
				<td><form:input name="fullname" path="fullname"
						required="required" /></td>
				<td><br> <form:errors path="fullname"
						cssClass="form-error" /></td>
			</tr>
			<tr>
				<td><form:label for="username" path="username">Username</form:label></td>
				<td><form:input name="username" path="username"
						required="required" /></td>
				<td><br> <form:errors path="username"
						cssClass="form-error" /></td>
			</tr>
			<tr>
				<td><form:label for="password" path="password">Password</form:label></td>
				<td><form:input type="password" name="password" path="password"
						required="required" /></td>
				<td><br> <form:errors path="password"
						cssClass="form-error" /></td>

			</tr>
			<tr>

				<td><form:label for="phno" path="phno">PhNo</form:label></td>
				<td><form:input name="phno" path="phno" required="required" />
				</td>
				<td><br> <form:errors path="phno" cssClass="form-error" />
				</td>

			</tr>
			<tr>
				<td><form:label for="email" path="email">Email Id</form:label></td>
				<td><form:input type="email" name="email" path="email"
						required="required" /></td>
				<td><br> <form:errors path="email" cssClass="form-error" /></td>
			</tr>
			<tr>
				<td><form:label for="address" path="address">Address</form:label></td>
				<td><form:textarea name="address" path="address"
						required="required" /></td>
				<td><br> <form:errors path="address" cssClass="form-error" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Register"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="/">Already
						Registered</a></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
