<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
	<div align="center">
	<h1 align="center">Fill The Below Student Form</h1>
		<form action="add-student" method="post">
			Name:<input type="text" name="name" required> <br><br>
			Mobile:<input type="tel" pattern=[0-9]{10} name="mobile" required>
			<br>
			<br> Gender:<input type="radio" name="gender" value="male">Male
			<input type="radio" name="gender" value="female">Female <br><br>
			Skills:<input type="checkbox" name="skills" value="frontend">Front-End
			<input type="checkbox" name="skills" value="backend">Back-End
			<br>
			<br>
			<button>Add</button>
		</form>
		<br>
			<a href="/spring_mvc_crud"><button>Back</button></a>
	</div>
</body>
</html>