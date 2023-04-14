package Domaine.evaluation;

import java.util.Date;

import Domaine.document.Document;

public class DocumentEvaluation extends Document {
	protected Evaluation evaluation;

	public DocumentEvaluation() {
		super();
	}

	public DocumentEvaluation(int id, String code, String nom,
			String emplacement, String type, long taille, Date dateUpload, Evaluation evaluation ) {
		super(id, code, nom, emplacement, type, taille, dateUpload);
		this.evaluation=evaluation;
	}

	public Evaluation getEvaluation() {
		return evaluation;
	}

	public void setEvaluation(Evaluation evaluation) {
		this.evaluation = evaluation;
	}

	@Override
	public String toString() {
		return "DocumentEvaluation [evaluation=" + evaluation + ", id=" + id
				+ ", code=" + code + ", nom=" + nom + ", emplacement="
				+ emplacement + ", type=" + type + ", taille=" + taille
				+ ", dateUpload=" + dateUpload + "]";
	}
}