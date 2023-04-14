package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Domaine.documentAdministratif.TypeDocumentEtudiant;
import dao.documentAdministratif.TypeDocumentEtudiantDAO;

/**
 * Servlet implementation class TypeDocEtdList
 */
@WebServlet("/TypeDocEtd/List")
public class TypeDocEtdList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public TypeDocumentEtudiantDAO docdao;
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocEtdList() {
        super();
        docdao = new TypeDocumentEtudiantDAO();

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<TypeDocumentEtudiant> docs= new ArrayList<TypeDocumentEtudiant>();
		try {
			docs = docdao.getAll();
			Gson gson = new GsonBuilder().create();
			String json = gson.toJson(docs).toString();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}

	

}
