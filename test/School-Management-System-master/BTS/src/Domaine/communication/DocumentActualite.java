package Domaine.communication;

import Domaine.document.Document;

public class DocumentActualite extends Document {
	private Actualite actualite;
	public DocumentActualite() {
		super();
	}
	public Actualite getActualite() {
		return actualite;
	}
	public void setActualite(Actualite actualite) {
		this.actualite = actualite;
	}
	
}