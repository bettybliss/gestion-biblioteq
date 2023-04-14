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

import Domaine.classe.Cycle;

import com.google.gson.Gson;

import dao.classe.CycleDAO;

/**
 * Servlet implementation class ClasseController
 */
@WebServlet("/Cycle/Add")
public class CycleAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private CycleDAO cycleDAO;  
    public CycleAdd() {
        super();
        cycleDAO = new CycleDAO();
    }

	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String code=request.getParameter("code");
		String nom_Fr= request.getParameter("nom_Fr");
		String nom_Ar=request.getParameter("nom_Ar");
		
		Cycle cycle = new Cycle();
		cycle.setCode(code);
		cycle.setNom_Fr(nom_Fr);
		cycle.setNom_Ar(nom_Ar);
		String result=null;
		try {
			cycleDAO.insert(cycle);
			result="Le cycle � �t� ajout� avec succ�s";
		} catch (SQLException e) {
			result="Impossible d'ajouter le cycle";
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
