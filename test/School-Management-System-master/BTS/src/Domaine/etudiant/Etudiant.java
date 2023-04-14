package Domaine.etudiant;

import java.util.ArrayList;
import java.util.Date;

import Domaine.etudiant.Scolarite;
import Domaine.etudiant.AbsenceEtudiant;
import Domaine.etablissement.Etablissement;
import Domaine.classe.Filiere;
import Domaine.utilisateur.Utilisateur;

public class Etudiant extends Utilisateur {
	private String cne;
	private String numInscription;
	private String anneeBac;
	private float moyenneBac;
	private String candidat;
	private String etat;
	public ArrayList<Scolarite> scolarites;
	public ArrayList<AbsenceEtudiant> absencesEtudiant;
	private Parent parent;
	private Etablissement etabOrigine;
	private OptionBac optionBac;
	private Mention mentionBac;
	private Filiere filiere;
	public Etudiant() {
		super();
		//Initialiser � Null la Scolarit� et les Absences lors de la Cr�ation d'un �tudiant
		this.scolarites = new ArrayList<Scolarite>();
		this.absencesEtudiant = new ArrayList<AbsenceEtudiant>();
	}
	public Etudiant(int id, String nom_Fr, String nom_Ar, String prenom_Fr,
			String prenom_Ar, String sexe, String cin, String nationalite,
			Date dateNais, String lieuNais_Fr, String lieuNais_Ar,
			String adresse_Fr, String adresse_Ar, String email,
			String situationF, String titre, String teleMobile,
			String teleDomicile, String photo,
			String cne, String numInscription, String anneeBac,float moyenneBac,
			String candidat,String etat, Parent parent, Etablissement etabOrigine,
			OptionBac optionBac, Mention mentionBac, Filiere filiere) {
		
		super(id, nom_Fr, nom_Ar, prenom_Fr, prenom_Ar, sexe, cin, nationalite,
				dateNais, lieuNais_Fr, lieuNais_Ar, adresse_Fr, adresse_Ar, email,
				situationF, titre, teleMobile, teleDomicile, photo);
		// Initialiser les attribut propres � l'�tudiant
		this.cne=cne;
		this.numInscription=numInscription;
		this.anneeBac=anneeBac;
		this.moyenneBac=moyenneBac;
		this.candidat=candidat;
		this.etat=etat;
		this.parent=parent;
		this.etabOrigine=etabOrigine;
		this.optionBac=optionBac;
		this.mentionBac=mentionBac;
		this.filiere=filiere;
		//Initialiser � Null la Scolarit� et ces Absences lors de la Cr�ation
		this.scolarites = new ArrayList<Scolarite>();
		this.absencesEtudiant = new ArrayList<AbsenceEtudiant>();
		
	}
	public String getCne() {
		return cne;
	}
	public void setCne(String cne) {
		this.cne = cne;
	}
	public String getNumInscription() {
		return numInscription;
	}
	public void setNumInscription(String numInscription) {
		this.numInscription = numInscription;
	}
	public String getAnneeBac() {
		return anneeBac;
	}
	public void setAnneeBac(String anneeBac) {
		this.anneeBac = anneeBac;
	}
	public float getMoyenneBac() {
		return moyenneBac;
	}
	public void setMoyenneBac(float moyenneBac) {
		this.moyenneBac = moyenneBac;
	}
	public String getCandidat() {
		return candidat;
	}
	public void setCandidat(String candidat) {
		this.candidat = candidat;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public ArrayList<Scolarite> getScolarite() {
		return scolarites;
	}
	public void addScolarite(Scolarite scolarite) {
		this.scolarites.add(scolarite);
	}
	public ArrayList<AbsenceEtudiant> getAbsencesEtudiant() {
		return absencesEtudiant;
	}
	public void addAbsencesEtudiant(AbsenceEtudiant absencesEtudiant) {
		this.absencesEtudiant.add(absencesEtudiant);
	}
	public Parent getParent() {
		return parent;
	}
	public void setParent(Parent parent) {
		this.parent = parent;
	}
	public Etablissement getEtabOrigine() {
		return etabOrigine;
	}
	public void setEtabOrigine(Etablissement etabOrigine) {
		this.etabOrigine = etabOrigine;
	}
	public OptionBac getOptionBac() {
		return optionBac;
	}
	public void setOptionBac(OptionBac optionBac) {
		this.optionBac = optionBac;
	}
	public Mention getMentionBac() {
		return mentionBac;
	}
	public void setMentionBac(Mention mentionBac) {
		this.mentionBac = mentionBac;
	}
	public Filiere getFiliere() {
		return filiere;
	}
	public void setFiliere(Filiere filiere) {
		this.filiere = filiere;
	}
	@Override
	public String toString() {
		return "Etudiant [id=" + id + ", nom_Fr=" + nom_Fr
				+ ", nom_Ar=" + nom_Ar + ", prenom_Fr=" + prenom_Fr
				+ ", prenom_Ar=" + prenom_Ar + ", sexe=" + sexe + ", cin="
				+ cin + ", cne=" + cne + ", numInscription=" + numInscription
				+ ", anneeBac=" + anneeBac + ", moyenneBac=" + moyenneBac
				+ ", candidat=" + candidat + ", etat=" + etat + ", scolarites="
				+ scolarites + ", absencesEtudiant=" + absencesEtudiant
				+ ", parent=" + parent + ", etabOrigine=" + etabOrigine
				+ ", optionBac=" + optionBac + ", mentionBac=" + mentionBac
				+ ", filiere=" + filiere + ", nationalite=" + nationalite + ", dateNais="
				+ dateNais + ", lieuNais_Fr=" + lieuNais_Fr + ", lieuNais_Ar="
				+ lieuNais_Ar + ", adresse_Fr=" + adresse_Fr + ", adresse_Ar="
				+ adresse_Ar + ", email=" + email + ", situationF="
				+ situationF + ", titre=" + titre + ", teleMobile="
				+ teleMobile + ", teleDomicile=" + teleDomicile + ", contacts="
				+ contacts + "]";
	}
}