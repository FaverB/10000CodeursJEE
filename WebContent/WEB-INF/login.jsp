<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@  taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
 <%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@  taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AUTHENTIFICATION</title>
</head>
<body>
	<form action="MaServlet" method="post">
		Name : <input type="text" name="user"><br>
		Password : <input type="text" name="pass"><br>
		<input type="submit" value="submit">
	</form><br>
	
	${(10+2)*2 }<br>
	
	${ pageContext.response.contentType }
	${ pageScope["name"] }
	${ param["page"] }
	${ header["user-agent"] }
	<br>
	
	<c:out value="Akwaba 10000 Codeurs"></c:out>
	
</body>
</html>