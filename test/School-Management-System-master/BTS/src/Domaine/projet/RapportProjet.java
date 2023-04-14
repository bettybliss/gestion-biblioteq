package Domaine.projet;

import java.util.Date;

import Domaine.document.Document;

public class RapportProjet extends Document {
	private String titre;
	private String description;
	private Projet projet;
	public RapportProjet() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RapportProjet(int id, String code, String nom, String emplacement,
			String type, long taille, Date dateUpload,String titre, String description, Projet projet) {
		super(id, code, nom, emplacement, type, taille, dateUpload);
		// TODO Auto-generated constructor stub
		this.titre = titre;
		this.description = description;
		this.projet = projet;
	}
	@Override
	public String toString() {
		return "RapportProjet [titre=" + titre + ", description=" + description
				+ ", projet=" + projet + ", id=" + id + ", code=" + code
				+ ", nom=" + nom + ", emplacement=" + emplacement + ", type="
				+ type + ", taille=" + taille + ", dateUpload=" + dateUpload
				+ "]";
	}
}