package br.com.igorcrrea.gerenciador.acao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.igorcrrea.gerenciador.modelo.Banco;
import br.com.igorcrrea.gerenciador.modelo.Empresa;

public class MostraEmpresa implements Acao {

	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("mostrando dados da empresa");
		
		String parametroId = request.getParameter("id");
		Integer id = Integer.valueOf(parametroId);
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscaEmpresaPeloId(id);
		
		request.setAttribute("empresa", empresa);

		
		//System.out.println(empresa.getNome());
		
		return "forward:formAlteraEmpresa.jsp";
	}
	
	
}
