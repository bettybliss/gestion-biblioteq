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
import Domaine.documentAdministratif.TypeDocumentPersonnel;
import dao.documentAdministratif.TypeDocumentPersonnelDAO;

/**
 * Servlet implementation class TypeDocPrsDetails
 */
@WebServlet("/TypeDocPrs/Details")
public class TypeDocPrsDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TypeDocumentPersonnelDAO docdao;  
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocPrsDetails() {
        super();
        docdao = new TypeDocumentPersonnelDAO();

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id =Integer.parseInt(request.getParameter("id"));
		TypeDocumentPersonnel doc= new TypeDocumentPersonnel();
		doc.setId(id);
		try {
			doc = docdao.getById(id);
			String json = new Gson().toJson(doc);
			
			response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json; charset=utf-8");
			
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
