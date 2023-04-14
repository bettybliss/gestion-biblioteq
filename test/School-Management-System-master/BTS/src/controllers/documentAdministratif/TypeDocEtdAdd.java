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

import Domaine.documentAdministratif.TypeDocumentEtudiant;
import dao.documentAdministratif.TypeDocumentEtudiantDAO;

/**
 * Servlet implementation class TypeDocEtdAdd
 */
@WebServlet("/TypeDocEtd/Add")
public class TypeDocEtdAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public TypeDocumentEtudiantDAO docdao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocEtdAdd() {
        super();
        docdao = new TypeDocumentEtudiantDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String code=request.getParameter("code");
		String nom_Fr= request.getParameter("nom_Fr");
		String nom_Ar=request.getParameter("nom_Ar");
		
		TypeDocumentEtudiant doc = new TypeDocumentEtudiant();
		doc.setCode(code);
		doc.setNom_Fr(nom_Fr);
		doc.setNom_Ar(nom_Ar);
		String result=null;
		try {
			docdao.insert(doc);
			result="the document was added";
		} catch (SQLException e) {
			result="Impossible to add the document";
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
