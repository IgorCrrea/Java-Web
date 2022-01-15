<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.igorcrrea.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Empresas</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/Style.css" type="text/css">
    
</head>
<body id="form-body">
	

	<c:import url="logout-parcial.jsp"/>
	<a href="/gerenciador/entrada?acao=NovaEmpresaForm">Nova Empresa</a>
	<br>
	<br>
	Usuario Logado: ${usuarioLogado.login }
	
	<br>
	<br>
	
	<c:if test="${not empty empresa}" >
		Empresa ${empresa} cadastrada com sucesso!
	</c:if>


	Lista de Empresas: <br/>
	
	<ul class="container">
		<c:forEach items="${empresas}" var="empresa">			
			<li class="row justify-content-md-center">
			<p class="col-md-10">${empresa.nome } - <fmt:formatDate value="${empresa.dataAbertura }" pattern="dd/MM/yyyy"/>.</p>
			<a class="col-md-1" href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}"><i class="glyphicon glyphicon-pencil i-edita"></i></a>
			<a  class="col-md-1"href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}"><i class="glyphicon glyphicon-remove i-remove"></i></a>
			<%--ID:${empresa.id } --%> 
			</li>
		</c:forEach>	
	</ul>
	
	<%--<ul>
		<% 
			List<Empresa> lista = (List<Empresa>)request.getAttribute("empresas");
			for (Empresa empresa : lista) {
		%>
				<li><%= empresa.getNome() %></li>
		<%
			}
		%>
	</ul>--%>

</body>
</html>