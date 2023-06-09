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

import Domaine.evaluation.FormeEvaluation;
import Domaine.matiere.ClasseGUnite;
import Domaine.matiere.ConfigurationMatiere;
import Domaine.matiere.Matiere;
import Domaine.matiere.Periode;
import dao.matiere.ConfigurationMatiereDAO;

/**
 * Servlet implementation class ClasseGeneriqueController
 */
@WebServlet("/ClasseGenerique/Unite/Matiere/Update")
public class ClasseGeneriqueUniteMatiereUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ConfigurationMatiereDAO configurationMatiereDAO;
       
    public ClasseGeneriqueUniteMatiereUpdate() {
        super();
        configurationMatiereDAO = new ConfigurationMatiereDAO();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int configurationMatiereId = Integer.parseInt(request.getParameter("configurationMatiereId"));
		int classeGUniteId = Integer.parseInt(request.getParameter("classeGUniteId"));
		int matiereId = Integer.parseInt(request.getParameter("matiere"));
		int periodeId = Integer.parseInt(request.getParameter("periode"));
		Short volumeHoraire= Short.parseShort(request.getParameter("volumeHoraire"));
		Short horaireS1= Short.parseShort(request.getParameter("horaireS1"));
		Short horaireS2= Short.parseShort(request.getParameter("horaireS2"));
		Short nbreControles= Short.parseShort(request.getParameter("nbreControles"));
		int formeControleId = Integer.parseInt(request.getParameter("formeControle"));
		float noteEliminatoire = Float.parseFloat(request.getParameter("noteEliminatoire"));
		
		
		ClasseGUnite classeGUnite = new ClasseGUnite();
		classeGUnite.setId(classeGUniteId);
		
		Matiere matiere = new Matiere();
		matiere.setId(matiereId);
		
		Periode periode = new Periode();
		periode.setId(periodeId);
		
		FormeEvaluation formeControle = new FormeEvaluation();
		formeControle.setId(formeControleId);
		
		ConfigurationMatiere configurationMatiere= new ConfigurationMatiere();
		configurationMatiere.setId(configurationMatiereId);
		configurationMatiere.setClasseGUnite(classeGUnite);
		configurationMatiere.setMatiere(matiere);
		configurationMatiere.setPeriode(periode);
		configurationMatiere.setFormeControle(formeControle);
		configurationMatiere.setVolumeHoraire(volumeHoraire);
		configurationMatiere.setHoraireS1(horaireS1);
		configurationMatiere.setHoraireS2(horaireS2);
		configurationMatiere.setNbreControles(nbreControles);
		configurationMatiere.setNoteEliminatoire(noteEliminatoire);
		
		
		String message=null;
		
		try {
			//TODO : ce test est incomplet : � corriger pour 
			// �viter la duplication d'une mati�re dans d'autre unit�s de la meme classes g�n�riques
			
			if(configurationMatiereDAO.exists(configurationMatiere)!= null && configurationMatiereDAO.exists(configurationMatiere).getId() != configurationMatiere.getId()){
				message="Impossible de modifier la mati�re . Cette mati�re existe d�ja dans l'une des unit�s ";
			}else{
				configurationMatiereDAO.update(configurationMatiere);
				message="La modification de la mati�re �l� faite avec succ�s";
				
			}	

			
		} catch (SQLException e1) {
			message="Impossible de modifier la configuration de la mati�re";
			e1.printStackTrace();
		}
		
		String json = new Gson().toJson(message);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
	}

}
