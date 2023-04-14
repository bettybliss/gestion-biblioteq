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

import Domaine.classe.ClasseGenerique;
import Domaine.matiere.ClasseGUnite;
import Domaine.matiere.ConfigurationMatiere;
import Domaine.matiere.ConfigurationModule;
import dao.matiere.ClasseGUniteDAO;
import dao.matiere.ConfigurationMatiereDAO;
import dao.matiere.ConfigurationModuleDAO;

/**
 * Servlet implementation class ClasseGeneriqueController
 */
@WebServlet("/ClasseGenerique/Programme/List")
public class ClasseGeneriqueProgrammeList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClasseGUniteDAO classeGUniteDAO;
	private ConfigurationMatiereDAO configurationMatiereDAO;
	private ConfigurationModuleDAO configurationModuleDAO; 
    public ClasseGeneriqueProgrammeList() {
        super();
        classeGUniteDAO = new ClasseGUniteDAO();
        configurationMatiereDAO = new ConfigurationMatiereDAO();
        configurationModuleDAO = new ConfigurationModuleDAO();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int classeGeneriqueId= Integer.parseInt(request.getParameter("id"));
		ClasseGenerique classeGenerique = new ClasseGenerique();
		classeGenerique.setId(classeGeneriqueId);
    	ArrayList<ClasseGUnite> classeGUnites= new ArrayList<ClasseGUnite>();
		String json=null;
		//Construire le programme de la classe g�n�rique donn�e sous forme hierarchique : Unit� ---> Mati�res ----> Modules
		try {
			classeGUnites = classeGUniteDAO.getAllByClasseGenerique(classeGenerique);
			//Charger toutes les unit�s de la classe g�n�rique ( Si elles existent bien s�re)
			for(int i=0;i<classeGUnites.size();i++){
				ArrayList<ConfigurationMatiere> configurationMatieres= new ArrayList<ConfigurationMatiere>();
				configurationMatieres = configurationMatiereDAO.getAllByClasseGUnite(classeGUnites.get(i));
				//Charger toutes les mati�re de l'unit� ( Si elles existent bien s�re)
				if(configurationMatieres.size()!=0){
					for(int j=0;j<configurationMatieres.size();j++){
						ArrayList<ConfigurationModule> configurationModules = new ArrayList<ConfigurationModule>();
						configurationModules = configurationModuleDAO.getAllByConfigurationMatiere(configurationMatieres.get(j));
						//Charger tout les modules de la mati�re ( Si il existent bien s�re)
						if(configurationModules.size()!=0){
							for(int k=0;k<configurationModules.size();k++){
								configurationMatieres.get(j).addConfigurationModules(configurationModules.get(k));
							}
						}
						classeGUnites.get(i).addConfigurationMatiere(configurationMatieres.get(j));
					}
				}
			}
			json = new Gson().toJson(classeGUnites);
			
			
		} catch (SQLException e) {
			json = new Gson().toJson(e.getMessage()).toString();
			e.printStackTrace();
		}
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}

}
