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

import Domaine.documentAdministratif.*;
import dao.documentAdministratif.TypeDocumentEtudiantDAO;

/**
 * Servlet implementation class TypeDocEtdDelete
 */
@WebServlet("/TypeDocEtd/Delete")
public class TypeDocEtdDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public TypeDocumentEtudiantDAO docdao;
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocEtdDelete() {
        super();
        docdao = new TypeDocumentEtudiantDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String result=null;
		int id =Integer.parseInt(request.getParameter("id"));
		TypeDocumentEtudiant doc= new TypeDocumentEtudiant();
		doc.setId(id);
		try {
			docdao.delete(doc);
			result="Le r�gion � �t� supprim�e avec succ�s";
		} catch (SQLException e) {
			result="Impossible de supprimer le r�gion";
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
