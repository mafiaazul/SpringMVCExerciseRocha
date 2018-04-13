<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Car Registration Form</h2>
<mvc:form modelAttribute="car" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="model">Model</mvc:label></td>
	        <td><mvc:input path="model" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="maker">Maker</mvc:label></td>
	        <td><mvc:input path="maker" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="year">Year</mvc:label></td>
	        <td><mvc:input path="year" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="color">Color</mvc:label></td>
	        <td><mvc:input path="color" /></td>
	    </tr>
        <tr>
            <td><mvc:label path="forSale">For Sale?</mvc:label></td>
            <td><mvc:checkbox path="forSale" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllUsers.mvc">View all Cars</a>
</body>
</html>