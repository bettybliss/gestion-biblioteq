package controllers.etudiant;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import java.sql.SQLException;

import java.text.Normalizer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Domaine.classe.Filiere;
import Domaine.etablissement.Etablissement;
import Domaine.etudiant.Etudiant;
import Domaine.etudiant.Mention;
import Domaine.etudiant.OptionBac;
import Domaine.etudiant.Parent;
import Domaine.securite.Compte;
import Domaine.securite.Role;

import com.google.gson.Gson;

import dao.etudiant.EtudiantDAO;
import dao.etudiant.ParentDAO;
import dao.securite.CompteDAO;
import dao.securite.RoleDAO;
import dao.utilisateur.UtilisateurDAO;

/**
 * Servlet implementation class ClasseController
 */
@WebServlet("/Etudiant/Update")
public class EtudiantUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UtilisateurDAO utilisateurDAO;
    private EtudiantDAO etudiantDAO;
    private ParentDAO parentDAO;
    public EtudiantUpdate() {
        super();
        utilisateurDAO = new UtilisateurDAO();
        etudiantDAO = new EtudiantDAO();
        parentDAO = new ParentDAO();
    }

	
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 request.setCharacterEncoding("UTF-8");
		 int etudiantId = Integer.parseInt(request.getParameter("etudiantId"));
		 String titre = request.getParameter("titre").trim();
		 String sexe = request.getParameter("sexe").trim();
		 String	nomFr = request.getParameter("nomFr").trim();
		 String prenomFr = request.getParameter("prenomFr").trim(); 
		 String cin = request.getParameter("cin").trim();
		 String dateNaissance = request.getParameter("dateNaissance").trim();
		 String	lieuNiassance = request.getParameter("lieuNiassance").trim();
		 String	nationalite = request.getParameter("nationalite").trim();
		 String	photoEtudiant = request.getParameter("photoEtudiant").trim();
		 String	nomAr = request.getParameter("nomAr").trim();
		 String	prenomAr = request.getParameter("prenomAr").trim();
		 String	lieuNaissAr = request.getParameter("lieuNaissAr").trim();
		 int filiereId = Integer.parseInt(request.getParameter("filiere").trim());
		 String	cne = request.getParameter("cne").trim();
		 String	numeroInscription = request.getParameter("numeroInscription").trim(); 
		 String	anneeBac = request.getParameter("anneeBac").trim(); 
		 int optionBacId = Integer.parseInt(request.getParameter("optionBac").trim());
		 int mentionBacId = Integer.parseInt(request.getParameter("mentionBac").trim());
		 float	moyenneBac = Float.parseFloat(request.getParameter("moyenneBac").trim());
		 String	candidat = request.getParameter("candidat").trim();
		 String	etat = request.getParameter("etat").trim();
		 int etablissementId= Integer.parseInt(request.getParameter("etablissement").trim());
		 String	email = request.getParameter("email").trim();
		 String	telMobile = request.getParameter("telMobile").trim();
		 String	telDomicile = request.getParameter("telDomicile").trim();
		 String	adresseFr = request.getParameter("adresseFr").trim();
		 String	adresseAr = request.getParameter("adresseAr").trim();
		 
		 int parentId = Integer.parseInt(request.getParameter("parentId"));
		 String	titreParent = request.getParameter("titreParent").trim();
		 String	nomFrParent = request.getParameter("nomFrParent").trim();
		 String	prenomFrParent = request.getParameter("prenomFrParent").trim();
		 String lienParente = request.getParameter("lienParente").trim();
		 String	cinParent = request.getParameter("cinParent").trim();
		 String	photoParent = request.getParameter("photoParent").trim();
		 String	nomArParent = request.getParameter("nomArParent").trim();
		 String	prenomArParent = request.getParameter("prenomArParent").trim();
		 String	emailParent = request.getParameter("emailParent").trim();
		 String	telMobileParent = request.getParameter("telMobileParent").trim();
		 String	telDomicileParent = request.getParameter("telDomicileParent").trim();
		 String	adresseFrParent = request.getParameter("adresseFrParent").trim();
		 
		
		Etudiant etudiant = new Etudiant();
		
		etudiant.setId(etudiantId);
		etudiant.setTitre(titre);
		etudiant.setSexe(sexe);
		etudiant.setNom_Fr(nomFr);
		etudiant.setPrenom_Fr(prenomFr);
		etudiant.setCin(cin);
		etudiant.setNom_Ar(nomAr);
		etudiant.setPrenom_Ar(prenomAr);
		etudiant.setLieuNais_Ar(lieuNaissAr);
		etudiant.setEmail(email);
		etudiant.setTeleMobile(telMobile);
		etudiant.setTeleDomicile(telDomicile);
		etudiant.setAdresse_Fr(adresseFr);
		etudiant.setAdresse_Ar(adresseAr);
		etudiant.setLieuNais_Fr(lieuNiassance);
		etudiant.setNationalite(nationalite);
		etudiant.setCne(cne);
		etudiant.setNumInscription(numeroInscription);
		etudiant.setAnneeBac(anneeBac);
		etudiant.setMoyenneBac(moyenneBac);
		etudiant.setCandidat(candidat);
		etudiant.setEtat(etat);
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date dateNaiss=null;
        try {
        	dateNaiss =  format.parse(dateNaissance);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		
		etudiant.setDateNais(dateNaiss);
		
		Filiere filiere = new Filiere();
		filiere.setId(filiereId);
		etudiant.setFiliere(filiere);
		
		OptionBac optionBac = new OptionBac();
		optionBac.setId(optionBacId);
		etudiant.setOptionBac(optionBac);
		
		Mention mentionBac = new Mention();
		mentionBac.setId(mentionBacId);
		etudiant.setMentionBac(mentionBac);
		
		Etablissement etablissement = new Etablissement();
		etablissement.setId(etablissementId);
		etudiant.setEtabOrigine(etablissement);
		
		Parent parent = new Parent();
		parent.setId(parentId);
		parent.setTitre(titreParent);
		parent.setNom_Fr(nomFrParent);
		parent.setPrenom_Fr(prenomFrParent);
		parent.setLienParente(lienParente);
		parent.setCin(cinParent);
		parent.setNom_Ar(nomArParent);
		parent.setPrenom_Ar(prenomArParent);
		parent.setEmail(emailParent);
		parent.setTeleMobile(telMobileParent);
		parent.setTeleDomicile(telDomicileParent);
		parent.setAdresse_Fr(adresseFrParent);
		parent.setDateNais(null);
		
		// R�cuperer le dossirer de sauvegarde des donn�es de l'application
		Properties prop = new Properties();
   	 	InputStream input = null;
   	 	// Ouvrir le fichier de configuration de l'application
   	 	input = getClass().getClassLoader().getResourceAsStream("config.properties");
        // Charger les propri�t�s
   	 	prop.load(input);
   	 	String storagePath=prop.getProperty("storagePath");
   	 	String uploadDir="upload";
   	 	String usersPhotoDirectory = storagePath+"\\users\\usersphotos";
		new File(usersPhotoDirectory).mkdirs();
		
		// Traitement la photo de l'�tudiant
		String photoEtudiantDoc = null;
   	 	if(photoEtudiant!="" ){
	   	 	File f1 = new File(photoEtudiant); 
	   	    // Si la photo n'a pas �t� modifi�e : conserver la meme photo dans la base de donn�es
	        if (f1.exists()){
	        	photoEtudiantDoc=photoEtudiant;
	        } else // sinon sauvegarder la nouvelle photo
	        {
				String savePath=storagePath+File.separator+uploadDir+ File.separator + photoEtudiant;
			   	File photoEtudiantTemp=new File(savePath);
			   	if(photoEtudiantTemp.exists()){
			   		//Enlever les carat�re accetu�s qui peuvent caus� des probl�me
			   		String photoEtudiant2= Normalizer.normalize(photoEtudiant, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
			   		File destination = new File(usersPhotoDirectory+File.separator + photoEtudiant2);
					// Copier la photo vers le dossier : UsersPhotos 
					Files.copy(photoEtudiantTemp.toPath(), destination.toPath(),StandardCopyOption.REPLACE_EXISTING);
					//photoEtudiantDoc=destination.toPath().toString();
					//URI uri = destination.toURI();
					//URL url = destination.toURI().toURL();
					photoEtudiantDoc= destination.toPath().toString();
			   	}
	        }
		}
   	 	etudiant.setPhoto(photoEtudiantDoc);
   	 	
   	 	// Traitement la photo du parent
		String photoParentDoc = null;
   	 	if(photoParent!="" ){
	   	 	File f2 = new File(photoParent); 
	   	    // Si la photo n'a pas �t� modifi�e : conserver la meme photo dans la base de donn�es
	        if (f2.exists()){
	        	photoParentDoc=photoParent;
	        } else // sinon sauvegarder la nouvelle photo
	        {
	        	String savePath=storagePath+File.separator+uploadDir+ File.separator + photoParent;
			   	File photoParentTemp=new File(savePath);
			   	if(photoParentTemp.exists()){
			   	//Convertir le nom du fichier en iso pour �viter les carat�re accetu�s qui peuvent caus� des probl�me
		        	String photoParent2= Normalizer.normalize(photoParent, Normalizer.Form.NFD).replaceAll("[^\\p{ASCII}]", "");
			   		File destination = new File(usersPhotoDirectory+File.separator + photoParent2);
					// Copier la photo vers le dossier : UsersPhotos 
					Files.copy(photoParentTemp.toPath(), destination.toPath(),StandardCopyOption.REPLACE_EXISTING);
					photoParentDoc=destination.toPath().toString();
			   	}
	        }
		}
		parent.setPhoto(photoParentDoc);
		etudiant.setParent(parent);
		
		String result=null;	
		try {
			
			utilisateurDAO.update(etudiant);
			etudiantDAO.update(etudiant);
			utilisateurDAO.update(parent);
			parentDAO.update(parent);
			
	
			result="L'�tudiant � �t� modifi� avec succ�s";
		} catch (SQLException e) {
			result="Impossible de modifier l'�tudiant";
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
