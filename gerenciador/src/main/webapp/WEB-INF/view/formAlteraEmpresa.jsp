
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/entrada" var = "linkServletAlteraEmpresa"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edita Empresa</title>
<link rel="stylesheet" href="css/Style.css" type="text/css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<script src="js/functions.js"></script>

</head>


<body id="form-body">
<header ><c:import url="logout-parcial.jsp"/></header>

	<div id="form-field">
		<div id="form-main-container">
	
			<h1>Edita Empresa</h1>
			<form class="form" action="${linkServletAlteraEmpresa}" method="post" id="formLogin">
				
				
				<label class="label-input" for="">
					<i class="fas fa-building"></i>
					<input id="nome" type="text" name="nome" value="${empresa.nome}" placeholder="Nome"/>
				</label>
	
					<br>
					<br>
	
				<label class="label-input" for="">
					<i class="fas fa-calendar-week"></i>
					<input id="data" type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>" placeholder="Data Abertura">
				</label>
					
					<br><br>
				
				<input type="hidden" name="id" value="${empresa.id }">
				<input type="hidden" name="acao" value="AlteraEmpresa">
				<input class="btn btn-second" type="button" value="Enviar" onclick="verificooDeCampos()"/>
				<input class="btn btn-primary" type="button" value="Cancelar" onclick="history.go(-1)"/>
			</form>
		</div>
	</div>
</body>
</html>

