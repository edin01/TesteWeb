package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dados.Corrida;
import dao.DadosDAO;

/**
 * Servlet implementation class CadCorrida
 */
@WebServlet("/CadCorrida")
public class CadCorrida extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
			Corrida cor = new Corrida();
			DadosDAO dd = new DadosDAO();
			
			String nm1 = request.getParameter("passageiro");
			String nm2 = request.getParameter("motorista");
			double val = Double.parseDouble(request.getParameter("valor"));
			
			cor.setNmPassageiro(nm1);
			cor.setNmMotorista(nm2);
			cor.setValor(val);
			
			String stpas = dd.validarPass(cor);
			String stmot = dd.validarMot(cor);
		//	String st = dd.motStatus(cor); infelizmente, não consegui arrumar o bug desse método que validava o motorista 
	
			if (stpas == "true" && stmot == "true") {
				dd.addCorrida(cor);
				response.sendRedirect("corridas.jsp");
				} else {
				response.sendRedirect("addCorrida.jsp");
			}
			
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
