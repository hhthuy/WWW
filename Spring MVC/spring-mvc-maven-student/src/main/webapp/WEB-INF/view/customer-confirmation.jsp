<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Confirmation</title>
</head>
<body>
The customer is confirmed:<br><br>
Fist Name: ${customer.firstName} <br><br>
Last Name: ${customer.lastName}<br><br>
Free Passes: ${customer.freePasses}<br><br>
Postal Code: ${customer.postalCode}
</body>
</html>