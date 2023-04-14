package Domaine.personnel;

import java.util.Date;

public class AbsencePersonnel {
	private int id;
	private Date dateDebut;
	private Date dateFin;
	private short duree;	// Attribut d�rriv� calcul� apartir de dateDebut et dateFin
	private Date dateReprise;
	private String motif;
	private boolean justification;
	private Personnel personnel;
	private DocJustifAbsPersonnel documentJustificatif;
	public AbsencePersonnel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AbsencePersonnel(int id, Date dateDebut, Date dateFin, short duree,
			Date dateReprise, String motif, boolean justification,
			Personnel personnel, DocJustifAbsPersonnel documentJustificatif) {
		this.id = id;
		this.dateDebut = dateDebut;
		this.dateFin = dateFin;
		this.duree= duree;
		this.dateReprise = dateReprise;
		this.motif = motif;
		this.justification = justification;
		this.personnel = personnel;
		this.documentJustificatif = documentJustificatif;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(Date dateDebut) {
		this.dateDebut = dateDebut;
	}
	public Date getDateFin() {
		return dateFin;
	}
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	
	public short getDuree() {
		return duree;
	}
	public void setDuree(short duree) {
		this.duree = duree;
	}
	public Date getDateReprise() {
		return dateReprise;
	}
	public void setDateReprise(Date dateReprise) {
		this.dateReprise = dateReprise;
	}
	public String getMotif() {
		return motif;
	}
	public void setMotif(String motif) {
		this.motif = motif;
	}
	public boolean isJustification() {
		return justification;
	}
	public void setJustification(boolean justification) {
		this.justification = justification;
	}
	public Personnel getPersonnel() {
		return personnel;
	}
	public void setPersonnel(Personnel personnel) {
		this.personnel = personnel;
	}
	public DocJustifAbsPersonnel getDocumentJustificatif() {
		return documentJustificatif;
	}
	public void setDocumentJustificatif(DocJustifAbsPersonnel documentJustificatif) {
		this.documentJustificatif = documentJustificatif;
	}
	@Override
	public String toString() {
		return "AbsencePersonnel [id=" + id + ", dateDebut=" + dateDebut
				+ ", dateFin=" + dateFin + ", dur�e=" + duree
				+ ", dateReprise=" + dateReprise
				+ ", motif=" + motif + ", justification=" + justification
				+ ", personnel=" + personnel + ", documentJustificatif="
				+ documentJustificatif + "]";
	}
}