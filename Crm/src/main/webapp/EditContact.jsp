<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="frm" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style type="text/css">
table {
	border: solid 2px black;
	border-collapse: collapse;
	width: 20%
}
</style>
</head>
<body>
	<table>
		<frm:form modelAttribute="contact" action="update" method="post"
			target="_blank">
			<tr>
				<th colspan="2" style="text-decoration: underline;">Update
					Contact</th>
			</tr>
			<tr>
				<td><frm:label path="id" >Enter Id:</frm:label></td>
				<td><frm:input path="id" readonly="true"/></td>
			</tr>
			<tr>
				<td><frm:label path="name">Enter Name:</frm:label></td>
				<td><frm:input path="name" /></td>
			</tr>
			<tr>
				<td><frm:label path="emailid">Enter EmailId:</frm:label></td>
				<td><frm:input path="emailid" /></td>
			</tr>
			<tr>
				<td><frm:label path="phno">Enter PhNo:</frm:label></td>
				<td><frm:input path="phno" /></td>
			</tr>
			<tr>
				<td><frm:label path="address">Enter Address:</frm:label></td>
				<td><frm:input path="address" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="contacthome">Cancel</a>&nbsp;&nbsp;<frm:button type="submit">Update Contact</frm:button></td>
			</tr>
		</frm:form>
	</table>

</body>
</html>