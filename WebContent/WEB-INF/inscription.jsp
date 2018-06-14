<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/theme.css">
<title>Inscription 10000 Codeurs</title>
</head>
<body>
	<div class="container">
	<h2 align="center"> 10.000 Codeurs Côte d'Ivoire</h2>
	<marquee> Merci de rejoindre l'aventure 10.000 Codeurs</marquee>
		
		<div class="container">
			<div class="title"> inscription</div>
			  <fieldset>
			   <% if (request.getAttribute("erreur")!= null) 
			    { %>
				 <% if (request.getAttribute("erreur_non") !=null)
				  { %>
				  
				  <div class="alert alert-warning"> erreur sur le nom</div>
				  
				<%}%>
			  <%} %>  
				
			  </fieldset>
			<form action="addCodeurs" method="post">
				<div class="form-group">
					<label for="nom"> Nom:
					<input type="text" class="form-control"  name="nom">
					 </label>
				</div>
				<div class="form-group">
					<label for="prenom"> Prenom:
					<input type="text" class="form-control"  name="prenom">
					 </label>
				</div>
				<div class="form-group">
					<label for="email"> Email:
					<input type="text" class="form-control"  name="email" placeholder="exemple@objis.com">
					 </label>
				</div>
				<div class="form-group">
					<label for="datNaiss"> Date de naissance:
					<input type="text" class="form-control"  name="dateNaiss" placeholder="JJ/MM/AAAA">
					 </label>
				</div>
				<div class="form-group">
					<label for="tel"> téléphone:
					<input type="text" class="form-control"  name="tel" placeholder="225 08406769">
					 </label>
				</div>
				<button class="btn btn-primary" type="submit"> S'inscrire </button>
			</form>
		</div>
		
	</div>

<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>