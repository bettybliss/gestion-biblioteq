package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import Domaine.documentAdministratif.TypeDocumentEtudiant;
import Domaine.documentAdministratif.TypeDocumentPersonnel;
import dao.documentAdministratif.TypeDocumentPersonnelDAO;

/**
 * Servlet implementation class TypeDocPrsList
 */
@WebServlet("/TypeDocPrs/List")
public class TypeDocPrsList extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TypeDocumentPersonnelDAO docdao;  

    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocPrsList() {
        super();
        docdao = new TypeDocumentPersonnelDAO();

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<TypeDocumentPersonnel> docs= new ArrayList<TypeDocumentPersonnel>();
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
			JOptionPane.showMessageDialog(null, e.getMessage());
			e.printStackTrace();
		}
	}
}
