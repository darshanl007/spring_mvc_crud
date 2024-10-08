<%@page isELIgnored="false"%>
<%@page import="java.util.Arrays"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fetch</title>
</head>
<body>
	<div align="center">
	<h1 style="color:blue">Students Record</h1>
		<table border=1>
			<tr>
			    <th>Id</th>
				<th>Name</th>
				<th>Mobile</th>
				<th>Gender</th>
				<th>Skills</th>
				<th>Edit</th>
				<th>Skills</th>
			</tr>
			<x:forEach var="s" items="${students}">
				<tr>
					<th>${s.id}</th>
					<th>${s.name}</th>
					<th>${s.mobile}</th>
					<th>${s.gender}</th>
					<th>${Arrays.toString(s.skills)}</th>
					<th><a href="edit?id=${s.id}"><button>Edit</button></a></th>
					<th><a href="delete?id=${s.id}"><button>Delete</button></a></th>
				</tr>
			</x:forEach>
		</table>
		<h1 style="color: green">${success}</h1>

	</div>
</body>
</html>