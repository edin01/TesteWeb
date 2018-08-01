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
 * Servlet implementation class AltMotorista
 */
@WebServlet("/AltMotorista")
public class AltMotorista extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
		Motorista mot = new Motorista();
		DadosDAO dd = new DadosDAO();
		
		int id = Integer.parseInt(request.getParameter("id"));
		String nnome = request.getParameter("newNome");
		String ndata = request.getParameter("newData");
		long ncpf = Long.parseLong(request.getParameter("newCpf"));
		String nmodelo = request.getParameter("newCarro");
		String nstatus = request.getParameter("newStatus");
		String nsexo = request.getParameter("newSexo");

		mot.setIdMot(id);
		mot.setNmMot(nnome);
		mot.setNascMot(ndata);
		mot.setCpfMot(ncpf);
		mot.setModelo(nmodelo);
		mot.setStatus(nstatus);
		mot.setSexo(nsexo);
		
		dd.altMoto(mot);
		
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
