package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Domaine.documentAdministratif.*;
import dao.documentAdministratif.DemandeDocEtudiantDAO;


/**
 * Servlet implementation class DocumentDelete
 */
@WebServlet("/Document/Delete")
public class DocumentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DemandeDocEtudiantDAO demandeDocEtudiantDAO;
    
    public DocumentDelete() {
        super();
       demandeDocEtudiantDAO= new DemandeDocEtudiantDAO();
        // TODO Auto-generated constructor stub
    }
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String result=null;
		int id =Integer.parseInt(request.getParameter("id"));
		DemandeDocEtudiant demande= new DemandeDocEtudiant();
		demande.setId(id);
		try {
			demandeDocEtudiantDAO.delete(demande);
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


