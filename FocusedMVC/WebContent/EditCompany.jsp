<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Company landing page</title>
</head>
<body>

<form action="UpdateCompany.do">
	<input type="text" name="name" value="${company.name}" required>
	<input type="text" name="username" value="${company.username}" required>
	<input type="password" name="password" value="${company.password}" required>
	<textarea rows="4" cols="50" name="description" value="${company.description}"></textarea>
	<input type="reset" value="reset">
	<input type="submit" value="submit">
</form>

</body>
</html>