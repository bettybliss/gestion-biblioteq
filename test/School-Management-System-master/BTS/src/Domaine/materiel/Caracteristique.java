package Domaine.materiel;

public class Caracteristique {
	private int id;
	private String code;
	private String caracteristique;
	private String valeur;
	private Materiel materiel;
	public Caracteristique() {
		super();
	}
	public Caracteristique(int id, String code, String caracteristique,
			String valeur, Materiel materiel) {
		super();
		this.id = id;
		this.code = code;
		this.caracteristique = caracteristique;
		this.valeur = valeur;
		this.materiel=materiel;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCaracteristique() {
		return caracteristique;
	}
	public void setCaracteristique(String caracteristique) {
		this.caracteristique = caracteristique;
	}
	public String getValeur() {
		return valeur;
	}
	public void setValeur(String valeur) {
		this.valeur = valeur;
	}
	
	public Materiel getMateriel() {
		return materiel;
	}
	public void setMateriel(Materiel materiel) {
		this.materiel = materiel;
	}
	@Override
	public String toString() {
		return "Caracteristique [id=" + id + ", code=" + code
				+ ", caracteristique=" + caracteristique + ", valeur=" + valeur + ", Materiel=" + materiel+"]";
	}
}