<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hello World of Spring</title>
</head>
<body>
	Hello World of Spring!
	<br><br>
	Student name: ${param.studentName}
	<br><br>
	The message: ${message} <!--C2: model.addAttribute("message", result); -->
</body>
</html>