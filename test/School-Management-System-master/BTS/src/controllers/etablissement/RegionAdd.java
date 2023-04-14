package controllers.etablissement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Domaine.etablissement.Region;

import com.google.gson.Gson;

import dao.etablissement.RegionDAO;

/**
 * Servlet implementation class ClasseController
 */
@WebServlet("/Region/Add")
public class RegionAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private RegionDAO regionDAO;  
    public RegionAdd() {
        super();
        regionDAO = new RegionDAO();
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
		
		Region region = new Region();
		region.setCode(code);
		region.setNom_Fr(nom_Fr);
		region.setNom_Ar(nom_Ar);
		String result=null;
		try {
			regionDAO.insert(region);
			result="Le r�gion � �t� ajout�e avec succ�s";
		} catch (SQLException e) {
			result="Impossible d'ajouter le r�gion";
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
