package controllers.classe;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Domaine.classe.AnneeScolaire;
import Domaine.classe.AnneeScolaireCourante;

import com.google.gson.Gson;

import dao.classe.AnneeScolaireCouranteDAO;

/**
 * Servlet implementation class ClasseController
 */
@WebServlet("/AnneeScolaireCourante/Add")
public class AnneeScolaireCouranteAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private AnneeScolaireCouranteDAO anneeScolaireCouranteDAO;  
    public AnneeScolaireCouranteAdd() {
        super();
        anneeScolaireCouranteDAO = new AnneeScolaireCouranteDAO();
    }

	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String message=null;
		boolean result=false;
		
		int anneeScolaireId =Integer.parseInt(request.getParameter("anneeScolaireId"));
		int anneeScolaireCouranteId =Integer.parseInt(request.getParameter("anneeScolaireCouranteId"));
	
		try {
				AnneeScolaireCourante anneeScolaireCourante = new AnneeScolaireCourante();
				
				AnneeScolaire anneeScolaire = new AnneeScolaire();
				anneeScolaire.setId(anneeScolaireId);
				
				anneeScolaireCourante.setId(anneeScolaireCouranteId);
				anneeScolaireCourante.setAnneeScolaire(anneeScolaire);
				
				anneeScolaireCouranteDAO.insert(anneeScolaireCourante);
				message="L'ann�e scolaire courante � �t� ajout�e avec succ�s";
		} catch (SQLException e) {
				message="Impossible d'ajouter l'ann�e scolaire courante";
				e.printStackTrace();
		}
		String json = new Gson().toJson(message).toString();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}

}
