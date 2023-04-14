package Domaine.document;

public class TypeDocumentEtudiant {
	private int id;
	private String code,nom_fr,nom_ar;
	public TypeDocumentEtudiant(int id,String c,String nf,String na) {
		this.id = id;
		code = c;
		nom_fr = nf;
		nom_ar = na;
	}
	public int getId() {
		return id;
	}
	public String getNom_fr() {
		return nom_fr;
	}
	public String getNom_ar() {
		return nom_ar;
	}
	public String getCode() {
		return code;
	}
	
	public void  setId(int id ) {
		this.id= id;
	}
	public void  setNom_fr(String fr) {
		nom_fr=fr;
	}
	public void  setNom_ar(String ar) {
		nom_ar=ar;
	}
	public void  setCode(String c) {
		 code=c;
	}
	
}
