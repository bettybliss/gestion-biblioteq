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
 * Servlet implementation class TypeDocEtdUpdate
 */
@WebServlet("/TypeDocEtd/Update")
public class TypeDocEtdUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public TypeDocumentEtudiantDAO docdao;
  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocEtdUpdate() {
        super();
        docdao = new TypeDocumentEtudiantDAO();

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int id=Integer.parseInt(request.getParameter("id"));
		String code=request.getParameter("code");
		String nom_Fr= request.getParameter("nom_Fr");
		String nom_Ar=request.getParameter("nom_Ar");
		
		TypeDocumentEtudiant doc = new TypeDocumentEtudiant();
		doc.setId(id);
		doc.setCode(code);
		doc.setNom_Fr(nom_Fr);
		doc.setNom_Ar(nom_Ar);
		System.out.print("Test  : " +doc);
		String result=null;
		
		try {
			docdao.update(doc);
			result="Le région à été modifiée avec succès";
		} catch (SQLException e) {
			result="Impossible de modifier le région";
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
