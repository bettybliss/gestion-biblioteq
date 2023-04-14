package Domaine.projet;

import java.util.Date;

import Domaine.projet.Projet;
import Domaine.document.Document;

public class CahierChargeProjet extends Document {
	private Projet projet;

	public CahierChargeProjet() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CahierChargeProjet(int id, String code, String nom,
			String emplacement, String type, long taille, Date dateUpload) {
		super(id, code, nom, emplacement, type, taille, dateUpload);
		// TODO Auto-generated constructor stub
	}

	public CahierChargeProjet(Projet projet) {
		this.projet = projet;
	}
	public Projet getProjet() {
		return projet;
	}

	public void setProjet(Projet projet) {
		this.projet=projet;
	}

	@Override
	public String toString() {
		return "CahierChargeProjet [projet=" + projet + ", id=" + id
				+ ", code=" + code + ", nom=" + nom + ", emplacement="
				+ emplacement + ", type=" + type + ", taille=" + taille
				+ ", dateUpload=" + dateUpload + "]";
	}	
}