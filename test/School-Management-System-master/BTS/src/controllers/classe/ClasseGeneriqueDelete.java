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

import Domaine.classe.ClasseGenerique;

import dao.classe.ClasseGeneriqueDAO;

/**
 * Servlet implementation class ClasseGeneriqueList
 */
@WebServlet("/ClasseGenerique/Delete")
public class ClasseGeneriqueDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClasseGeneriqueDAO classeGeneriqueDAO;
    public ClasseGeneriqueDelete() {
        super();
        classeGeneriqueDAO = new ClasseGeneriqueDAO();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String result=null;
		int classeGeneriqueId =Integer.parseInt(request.getParameter("id"));
		ClasseGenerique classeGenerique= new ClasseGenerique();
		classeGenerique.setId(classeGeneriqueId);
		try {
			classeGeneriqueDAO.delete(classeGenerique);
			result="La classe g�n�rique � �t� supprim�e avec succ�s";
		} catch (SQLException e) {
			result="Impossible de supprimer la classe g�n�rique";
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
