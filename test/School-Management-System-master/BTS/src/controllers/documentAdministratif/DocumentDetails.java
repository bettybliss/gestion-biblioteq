package controllers.documentAdministratif;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.google.gson.Gson;

import Domaine.documentAdministratif.*;
import dao.documentAdministratif.DemandeDocEtudiantDAO;

/**
 * Servlet implementation class DocumentDetails
 */
@WebServlet("/Document/Details")
public class DocumentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DemandeDocEtudiantDAO demandeDocEtudiantDAO;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocumentDetails() {
        super();
        demandeDocEtudiantDAO= new DemandeDocEtudiantDAO();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id =Integer.parseInt(request.getParameter("id"));
		System.out.println(id);

		DemandeDocEtudiant demande;
		try {
			demande = demandeDocEtudiantDAO.getById(id);
			System.out.println("test0");

			String json = new Gson().toJson(demande);
			System.out.println("test");
			response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json; charset=utf-8");
			System.out.println("test2");

			PrintWriter out = response.getWriter();
			System.out.println("test3");

			out.print(json);
			out.flush();
			
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,e.getMessage());}	
	}
}
