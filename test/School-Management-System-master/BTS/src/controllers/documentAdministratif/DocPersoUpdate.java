package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import dao.documentAdministratif.*;
import Domaine.documentAdministratif.*;

/**
 * Servlet implementation class DocPersoUpdate
 */
@WebServlet("/DocPerso/Update")
public class DocPersoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DemandeDocPersonnelDAO  demandedao;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocPersoUpdate() {
        super();
        demandedao = new DemandeDocPersonnelDAO();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
	       String result=null;
			int id=Integer.parseInt(request.getParameter("id"));
			String etat=request.getParameter("etat");
			String dateRet = request.getParameter("dateRetrait");

			SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
			java.util.Date dateRetrait =null;
	        try {
	        	dateRetrait =  format.parse(dateRet);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
	        
			DemandeDocPersonnel demande = new DemandeDocPersonnel();
			demande.setId(id);
			demande.setEtat(etat);
			demande.setDateRetrait(dateRetrait);
			System.out.print("Test  : " +demande);

			try {
				demandedao.update(demande);
				result="L'etat a ete modifie avec succes";
			} catch (SQLException e) {
				result="Impossible de modifier l'etat";
				e.printStackTrace();
			}
			String json = new Gson().toJson(result).toString();

			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
		}
	

}
