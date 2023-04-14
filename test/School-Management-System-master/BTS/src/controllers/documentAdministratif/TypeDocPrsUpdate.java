package controllers.documentAdministratif;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import Domaine.documentAdministratif.*;
import dao.documentAdministratif.TypeDocumentPersonnelDAO;

/**
 * Servlet implementation class TypeDocPrsUpdate
 */
@WebServlet("/TypeDocPrs/Update")
public class TypeDocPrsUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private TypeDocumentPersonnelDAO docdao;  
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TypeDocPrsUpdate() {
        super();
        docdao = new TypeDocumentPersonnelDAO();

        // TODO Auto-generated constructor stub
    }

	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("UTF-8");
		
		int id=Integer.parseInt(request.getParameter("id"));
		String code=request.getParameter("code");
		String nom_Fr= request.getParameter("nom_Fr");
		String nom_Ar=request.getParameter("nom_Ar");
		
		TypeDocumentPersonnel doc = new TypeDocumentPersonnel();
		doc.setId(id);
		doc.setCode(code);
		doc.setNom_Fr(nom_Fr);
		doc.setNom_Ar(nom_Ar);
		System.out.print("Test  : " +doc);
		String result=null;
		
		try {
			docdao.update(doc);
			result="The document is updated succefully";
		} catch (SQLException e) {
			result="the update had failed";
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
