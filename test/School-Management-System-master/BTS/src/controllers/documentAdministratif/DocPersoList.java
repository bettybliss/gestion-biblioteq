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

import Domaine.documentAdministratif.*;
import dao.documentAdministratif.*;

/**
 * Servlet implementation class DocPersoList
 */
@WebServlet("/DocPerso/List")
public class DocPersoList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DemandeDocPersonnelDAO demandeDocPersonnelDAO;
  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocPersoList() {
        super();
        demandeDocPersonnelDAO= new DemandeDocPersonnelDAO();

    }
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<DemandeDocPersonnel> tab= new ArrayList<DemandeDocPersonnel>();
		String json=null;
		try {
			System.out.println("tst");

			tab = demandeDocPersonnelDAO.getAll();
			Gson gson = new GsonBuilder().create();
			gson.serializeNulls();			
			json = gson.toJson(tab).toString();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			System.out.println("plwaaaaaaaaaaase khdmiii");

			
			out.print(json);
			out.flush();	
			} catch (Exception e) {
				
				JOptionPane.showMessageDialog(null,e);
			}
	}
}




