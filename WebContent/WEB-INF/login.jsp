<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@  taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
 <%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@  taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>AUTHENTIFICATION</title>
</head>

<body>

	<nav class="navbar navbar-inverse">
  		<div class="container-fluid">
   			<div class="navbar-header">
      			<a class="navbar-brand" href="#">WebSiteName</a>
    		</div>
    		<ul class="nav navbar-nav">
      			<li class="active"><a href="#">Home</a></li>
      			<li><a href="#">Page 1</a></li>
      			<li><a href="#">Page 2</a></li>
    		</ul>
    		<ul class="nav navbar-nav navbar-right">
      			<li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      			<li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    		</ul>
  		</div>
	</nav>
	
	<form action="MaServlet" method="post" target="_blank">
		<fieldset>
			<legend>Informations personnelles</legend>
				Name : <input type="text" name="user" value="biaz"><br><br>
				Password : <input type="text" name="pass"><br><br>
				<button type="button" class="btn btn-success">Enter</button>
				<input type="submit" value="Valider">
		</fieldset>
	</form><br>
	
	${(10+2)*2 }<br><br>
	
	${ pageContext.response.contentType }
	${ pageScope["name"] }
	${ param["page"] }
	${ header["user-agent"] }
	<br><br>
	
	<c:out value="Akwaba 10000 Codeurs"></c:out>
	
</body>

</html>