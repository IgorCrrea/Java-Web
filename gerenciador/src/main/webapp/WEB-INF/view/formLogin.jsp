<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<c:url value="/entrada" var = "linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/Style.css" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

</head>
<body id="form-body">
	<div id="form-field">
		<div id="form-main-container">
	
			<h1>Login</h1>
			<form class="form" action="${linkServletNovaEmpresa}" method="post" id="formLogin">
				
				
				<label class="label-input" for="">
					<i class="far fa-user icon-modify"></i>
					<input type="text" name="login" placeholder="Login"/>
				</label>
	
					<br>
					<br>
	
				<label class="label-input" for="">
					<i class="fas fa-lock icon-modify"></i>
					<input type="password" name="senha" placeholder="Senha">
				</label>
					
					<br><br>
				
				<input type="hidden" name="acao" value="Login">
				<input class="btn btn-second" type="submit"/>
			</form>
		</div>
	</div>
</body>
</html>