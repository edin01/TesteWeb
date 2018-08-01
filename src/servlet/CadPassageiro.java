package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dados.Passageiro;
import dao.DadosDAO;



/**
 * Servlet implementation class CadPassageiro
 */
@WebServlet("/CadPassageiro")
public class CadPassageiro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
		Passageiro pas = new Passageiro();
		DadosDAO dd = new DadosDAO();
		
		String nome = request.getParameter("nomePas");
		String data = request.getParameter("dataPas");
		long cpf = Long.parseLong(request.getParameter("cpfPas"));
		String sexo = request.getParameter("genPas");
		
		pas.setNmPass(nome);
		pas.setNascPass(data);
		pas.setCpfPass(cpf);
		pas.setSxPass(sexo);
		
		dd.addPass(pas);
		
		response.sendRedirect("passageiros.jsp");
		
        }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
