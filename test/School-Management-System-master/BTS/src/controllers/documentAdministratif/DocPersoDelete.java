package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.documentAdministratif.*;
import Domaine.documentAdministratif.*;

/**
 * Servlet implementation class DocPersoDelete
 */
@WebServlet("/DocPerso/Delete")
public class DocPersoDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DemandeDocPersonnelDAO  demandeDocPersonnelDAO; 
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocPersoDelete() {
        super();
        demandeDocPersonnelDAO= new DemandeDocPersonnelDAO();

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String result=null;
		int id =Integer.parseInt(request.getParameter("id"));
		DemandeDocPersonnel demande= new DemandeDocPersonnel();
		demande.setId(id);
		try {
			demandeDocPersonnelDAO.delete(demande);
			result="Le région à été supprimée avec succès";
		} catch (Exception e) {
			result="Impossible de supprimer le région";
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
