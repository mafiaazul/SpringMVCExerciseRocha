<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Car Registration Result</h2>
    <table>
        <tr>
            <td>Model</td>
            <td>${c.model}</td>
        </tr>
        <tr>
            <td>Maker</td>
            <td>${c.maker}</td>
        </tr>
        <tr>
            <td>Year</td>
            <td>${c.year}</td>
        </tr>
        <tr>
            <td>Color</td>
            <td>${c.color}</td>
        </tr>
        <tr>
            <td>For Sale?</td>
            <td>${c.forSale}</td>
        </tr>
        </table>
<a href = "viewAllCars.mvc">View all Cars</a>
</body>
</html>