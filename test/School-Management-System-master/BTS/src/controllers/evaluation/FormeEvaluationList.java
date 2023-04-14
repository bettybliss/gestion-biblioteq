package controllers.evaluation;

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
import com.google.gson.GsonBuilder;

import Domaine.evaluation.FormeEvaluation;

import dao.evaluation.FormeEvaluationDAO;;

/**
 * Servlet implementation class formeEvaluationList
 */
@WebServlet("/FormeEvaluation/List")
public class FormeEvaluationList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FormeEvaluationDAO formeEvaluationDAO;
    public FormeEvaluationList() {
        super();
        formeEvaluationDAO = new FormeEvaluationDAO();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<FormeEvaluation> formeEvaluations= new ArrayList<FormeEvaluation>();
		try {
			formeEvaluations = formeEvaluationDAO.getAll();
			Gson gson = new GsonBuilder().create();
			gson.serializeNulls();
			String json = gson.toJson(formeEvaluations);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}

