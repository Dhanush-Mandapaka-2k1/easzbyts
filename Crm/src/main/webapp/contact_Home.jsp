<%@page import="com.crmproject.entity.Contact"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style type="text/css">
table {
	border: solid 3px black;
	border-collapse: collapse;
	width: 100%;
}

tr, td, th {
	border: solid 3px black;
	border-collapse: collapse;
}
</style>
<script type="text/javascript">
	function updateContact(id) {
		document.frm.action = "updateContact";
		document.frm.contactid.value = id;
		document.frm.submit();
	}
	function deleteContact(id) {
		if (confirm("do you want to delete Contact?")) {
			document.frm.action = "deleteContact";
			document.frm.contactid.value = id;
			document.frm.submit();
		}
	}
	function searchByName()
	{
		document.frm.action = "getContactByName";
		document.frm.submit();
	}
</script>
<meta charset="UTF-8">
<title>Contact Management</title>
</head>
<body>
	<form name="frm" method="post" target="_Blank" action="addcontact">
		<input type="hidden" name="contactid">
		<table>
			<tr>
				<th colspan="7"
					style="font-size: 20px; font-family: 'arial'; font-variant: small-caps;">Contact
					Management</th>
			</tr>
			<tr>
				<td colspan="7">Search By Name : <input type="search"
					name="byName">
					<button onclick="searchByName()">submit</button></td>
			</tr>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>EmailId</th>
				<th>PhNo</th>
				<th>Address</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
			List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
			%>
			<%
			if (contacts.isEmpty()) {
			%>
			<tr>
				<td colspan="7" align="center">No Contacts found</td>
			</tr>
			<%
			} else {
			for (Contact c : contacts) {
			%>

			<tr align="center">
				<td><%=c.getId()%></td>
				<td><%=c.getEmailid()%></td>
				<td><%=c.getPhno()%></td>
				<td><%=c.getAddress()%></td>
				<td><button onclick="updateContact(<%=c.getId()%>)">Update</button></td>
				<td><button onclick="deleteContact(<%=c.getId()%>)">Delete</button></td>
			</tr>
			<%
			}
			}
			%>
			<tr>
				<td colspan="7" align="center"><input type="submit"
					value="Add New Contact" style="width: 15%"></td>
			</tr>
		</table>
	</form>
</body>
</html>