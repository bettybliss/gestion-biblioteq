package controllers.classe;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Domaine.classe.Niveau;

import dao.classe.NiveauDAO;

/**
 * Servlet implementation class NiveauList
 */
@WebServlet("/Niveau/List")
public class NiveauList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NiveauDAO NiveauDAO;
    public NiveauList() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ArrayList<Niveau> niveaux= new ArrayList<Niveau>();
			NiveauDAO = new NiveauDAO();
			niveaux = NiveauDAO.getAll();
			String json = new Gson().toJson(niveaux);
					
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			final PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}
