package controllers.documentAdministratif;

import java.io.*;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.swing.JOptionPane;

import com.google.gson.*;

import dao.documentAdministratif.*;
import Domaine.documentAdministratif.*;

/**
 * Servlet implementation class DocumentList
 */
@WebServlet("/Document/List")
public class DocumentList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DemandeDocEtudiantDAO demandeDocEtudiantDAO;
       
    public DocumentList() {
        super();
       demandeDocEtudiantDAO= new DemandeDocEtudiantDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<DemandeDocEtudiant> tab= new ArrayList<DemandeDocEtudiant>();
		String json=null;
		try {
			System.out.println("tst");

			tab = demandeDocEtudiantDAO.getAll();
			System.out.println("tst");
			Gson gson = new GsonBuilder().create();
			System.out.println("tst");

			gson.serializeNulls();
			System.out.println("tst");

			json = gson.toJson(tab).toString();
			System.out.println("tst");

			response.setContentType("application/json");
			System.out.println("tst");

			//JOptionPane.showMessageDialog(null,json);
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println("last test");

			
			out.print(json);
			out.flush();
			
		} catch (Exception e) {
			
			JOptionPane.showMessageDialog(null,e);
		}	
	}
	
}



