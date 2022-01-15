<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<c:url value="/entrada" var = "linkServletNovaEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Empresa</title>
<link rel="stylesheet" href="css/Style.css" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<script src="js/functions.js"></script>

</head>
<%-- <c:import url="logout-parcial.jsp"/> --%>

<body id="form-body">
<header ><c:import url="logout-parcial.jsp"/></header>

	<div id="form-field">
		<div id="form-main-container">
	
			<h1>Cadastro Empresa</h1>
			<form class="form" action="${linkServletNovaEmpresa}" method="post" id="formLogin">
				
				
				<label class="label-input" for="">
					<i class="fas fa-building"></i>
					<input id="nome" type="text" name="nome" placeholder="Nome"/>
				</label>
	
					<br>
					<br>
	
				<label class="label-input" for="">
					<i class="fas fa-calendar-week"></i>
					<input id="data" type="text" name="data" placeholder="dd/mm/aaaa">
				</label>
					
					<br>
					<br>
				
				<input type="hidden" name="acao" value="NovaEmpresa">
				<input class="btn btn-second" type="button" value="Enviar" onclick="verificooDeCampos()"/>
				<input class="btn btn-primary" type="button" value="Cancelar" onclick="history.go(-1)"/>
			</form>
		</div>
	</div>
</body>
</html>

