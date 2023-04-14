package controllers.matiere;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Domaine.matiere.Module;

import dao.matiere.ModuleDAO;

/**
 * Servlet implementation class ModuleList
 */
@WebServlet("/Module/Details")
public class ModuleDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ModuleDAO moduleDAO;
    public ModuleDetails() {
        super();
        moduleDAO = new ModuleDAO();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id =Integer.parseInt(request.getParameter("id"));
		Module module= new Module();
		module.setId(id);
		try {
			module = moduleDAO.getById(id);
			String json = new Gson().toJson(module);
			
			response.setCharacterEncoding("UTF-8");
            response.setContentType("application/json; charset=utf-8");
			
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}
