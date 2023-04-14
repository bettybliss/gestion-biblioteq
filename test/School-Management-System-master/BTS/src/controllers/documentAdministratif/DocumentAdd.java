package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Domaine.documentAdministratif.DemandeDocEtudiant;
import Domaine.documentAdministratif.TypeDocumentEtudiant;
import Domaine.etudiant.OptionBac;
import dao.documentAdministratif.DemandeDocEtudiantDAO;

/**
 * Servlet implementation class DocumentAdd
 */
@WebServlet("/Document/Add")
public class DocumentAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DemandeDocEtudiantDAO demandeDao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocumentAdd() {
        super();
        demandeDao = new DemandeDocEtudiantDAO();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
		
		int code=Integer.parseInt(request.getParameter("code"));
		int id=Integer.parseInt(request.getParameter("id"));
		int nom_Fr=Integer.parseInt(request.getParameter("nom_Fr"));
		String nom_Ar=request.getParameter("nom_Ar");
		TypeDocumentEtudiant typdoc = new TypeDocumentEtudiant();
		typdoc.setId(id);
		typdoc.setNom_Fr("");

		DemandeDocEtudiant demande = new DemandeDocEtudiant();
		demande.setId(code);
		demande.setType(typdoc);
		demande.setEtat(nom_Ar);
		String result=null;
		try {
			demandeDao.insert(demande);
			result="la demande du decument a ete ajoutee avec succes";
		} catch (SQLException e) {
			result="Impossible d'ajouter la demande de ce document";
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
