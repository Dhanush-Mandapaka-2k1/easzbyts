<%@page import="com.crm.entity.Customer"%>
<%@page import="java.util.Date"%>
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
	
	function updateCustomer(id) {
		document.frm.action = "updateCustomer";
		document.frm.Customerid.value = id;
		document.frm.submit();
	}
	function deleteCustomer(id) {
		if (confirm("do you want to delete Customer?")) {
			document.frm.action = "deleteCustomer";
			document.frm.Customerid.value = id;
			document.frm.submit();
		}
	}
	function searchByFirstName()
	{
		document.frm.action = "getByFirstName";
		document.frm.submit();
	}
	function searchByLastName()
	{
		document.frm.action = "getByLastName";
		document.frm.submit();
	}
</script>
<meta charset="UTF-8">
<title>Customer Management</title>
</head>
<body>
	<form name="frm" method="post" target="_Blank" action="addCustomer">
		<input type="hidden" name="Customerid">
		<table>
			<tr>
				<th colspan="8"
					style="font-size: 20px; font-family: 'arial'; font-variant: small-caps;">Customer 
					Management</th>
			</tr>
			<tr>
				<td colspan="8">Search By FirstName : <input type="search"
					name="byFirstName">
					<button onclick="searchByFirstName()">search</button>&nbsp; Search
					By LastName : <input type="search" name="byLastName">
					<button onclick="searchByLastName()">search</button></td>
			</tr>
			<tr>
				<th>Id</th>
				<th>First Name</th>
				<th>last Name</th>
				<th>Age</th>
				<th>Emailid</th>
				<th>Address</th>
				<th>update</th>
				<th>Delete</th>
			</tr>
			<%
			List<Customer> customers = (List<Customer>) request.getAttribute("customers");
			%>
			<%
			if (customers.isEmpty()) {
			%>
			<tr>
				<td colspan="8" align="center">No Customers found</td>
			</tr>
			<%
			} else {
				for (Customer c : customers) {
			%>

			<tr align="center">
				<td><%=c.getUserid()%></td>
				<td><%=c.getFirstname()%></td>
				<td><%=c.getLastname()%></td>
				<td><%=c.getAge()%></td>
				<td><%=c.getEmailid()%></td>
				<td><%=c.getAddress()%></td>
				<td><button onclick="updateCustomer(<%=c.getUserid()%>)">Update</button></td>
				<td><button onclick="deleteCustomer(<%=c.getUserid()%>)">Delete</button></td>
			</tr>
			<%
			}
			}
			%>
			<tr>
				<td colspan="8" align="center"><input type="submit"
					value="Add New Customer" style="width: 15%"></td>
			</tr>
		</table>
	</form>
</body>
</html>