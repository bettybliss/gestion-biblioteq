package controllers.classe;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Domaine.classe.Cycle;

import dao.classe.CycleDAO;

/**
 * Servlet implementation class CycleList
 */
@WebServlet("/Cycle/Delete")
public class CycleDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CycleDAO cycleDAO;
    public CycleDelete() {
        super();
        cycleDAO = new CycleDAO();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String result=null;
		int id =Integer.parseInt(request.getParameter("id"));
		Cycle cycle= new Cycle();
		cycle.setId(id);
		try {
			cycleDAO.delete(cycle);
			result="Le cycle � �t� supprim� avec succ�s";
		} catch (SQLException e) {
			result="Impossible de supprimer le cycle";
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
