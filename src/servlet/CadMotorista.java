package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dados.Motorista;
import dao.DadosDAO;

/**
 * Servlet implementation class CadMotorista
 */
@WebServlet("/CadMotorista")
public class CadMotorista extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
			Motorista mot = new Motorista();
			DadosDAO dd = new DadosDAO();
			
			String nome = request.getParameter("nomeMot");
			String data = request.getParameter("dataMot");
			long cpf = Long.parseLong(request.getParameter("cpfMot"));
			String modelo = request.getParameter("tipoCarro");
			String status = request.getParameter("status");
			String sexo = request.getParameter("genMot");
			
			mot.setNmMot(nome);
			mot.setNascMot(data);
			mot.setCpfMot(cpf);
			mot.setModelo(modelo);
			mot.setStatus(status);
			mot.setSexo(sexo);
			
			dd.addMoto(mot);
			
			response.sendRedirect("motoristas.jsp");
			
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
