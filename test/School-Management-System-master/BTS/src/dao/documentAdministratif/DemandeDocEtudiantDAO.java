package dao.documentAdministratif;
import Domaine.documentAdministratif.*;
import Domaine.etudiant.Etudiant;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.sql.Date;
import java.util.*;

import javax.swing.JOptionPane;

import dao.database.Db;
import com.mysql.jdbc.PreparedStatement;


public class DemandeDocEtudiantDAO 	{
	private Connection con;
	public DemandeDocEtudiantDAO() {
		this.con = Db.getInstance().con;
	}
//	SELECT `demandedocetudiant`.`ID`,"
//			+ " `demandedocetudiant`.`EtudiantUtilisateurID`,"
//			+ " `demandedocetudiant`.`TypeDocumentEtudiantID`,"
//			+ " `demandedocetudiant`.`Date`, `demandedocetudiant`.`Etat`,"
//			+ " `demandedocetudiant`.`DateRetrait`,`typedocumentetudiant`.`IDDoc`,"
//			+ " `typedocumentetudiant`.`Code`, `typedocumentetudiant`.`Nom_Fr`,"
//			+ " `typedocumentetudiant`.`Nom_Ar`, "
////			+ "`etudiant`.`UtilisateurID`, `etudiant`.`EtablissementID`, "
////			+ "`etudiant`.`FiliereID`, `etudiant`.`Cne`, `etudiant`.`NumInscription`,"
////			+ " `etudiant`.`AnneeBac`, `etudiant`.`OptionBacID`, `etudiant`.`MoyenneBac`,"
////			+ " `etudiant`.`MentionID`, `etudiant`.`Candidat`, `etudiant`.`EtatE`,"
////			+ " `etudiant`.`ParentUtilisateurID` "
//			+ "FROM demandedocetudiant , etudiant , typedocumentetudiant  WHERE "
//			+ "(`demandedocetudiant`.`TypeDocumentEtudiantID` = `typedocumentetudiant`.`IDDoc`) and"
//			+ " `demandedocetudiant`.`EtudiantUtilisateurID`=`etudiant`.`UtilisateurID`
	
	// another try hh
	//SELECT ID,EtudiantUtilisateurID,TypeDocumentEtudiantID,Date,Etat,DateRetrait,Observation,IDDoc,Code,Nom_Fr,Nom_Ar FROM `demandedocetudiant` d, `typedocumentetudiant` t WHERE d.TypeDocumentEtudiantID=t.IDDoc;
	
	public ArrayList<DemandeDocEtudiant> getAll(){ 
		try {
		ArrayList<DemandeDocEtudiant> tab = new ArrayList<DemandeDocEtudiant>();
		String sql= "SELECT\r\n"
				+ "    `etudiant`.`UtilisateurID`,\r\n"
				+ "    `utilisateur`.`Nom_Fr` as nom,\r\n"
				+ "    `utilisateur`.`Prenom_Fr`,\r\n"
				+ "    `etudiant`.`EtablissementID`,\r\n"
				+ "    `etudiant`.`FiliereID`,\r\n"
				+ "    `etudiant`.`Cne`,\r\n"
				+ "    `etudiant`.`NumInscription`,\r\n"
				+ "    `etudiant`.`AnneeBac`,\r\n"
				+ "    `etudiant`.`OptionBacID`,\r\n"
				+ "    `etudiant`.`MoyenneBac`,\r\n"
				+ "    `etudiant`.`MentionID`,\r\n"
				+ "    `etudiant`.`Candidat`,\r\n"
				+ "    `etudiant`.`Etat`,\r\n"
				+ "    `etudiant`.`ParentUtilisateurID`,\r\n"
				+ "    `typedocumentetudiant`.`ID` as typeid,\r\n"
				+ "    `typedocumentetudiant`.`Code`,\r\n"
				+ "    `typedocumentetudiant`.`Nom_Fr`,\r\n"
				+ "    `typedocumentetudiant`.`Nom_Ar`,\r\n"
				+ "    `demandedocetudiant`.`ID`,\r\n"
				+ "    `demandedocetudiant`.`EtudiantUtilisateurID`,\r\n"
				+ "    `demandedocetudiant`.`TypeDocumentEtudiantID`,\r\n"
				+ "    `demandedocetudiant`.`Date`,\r\n"
				+ "    `demandedocetudiant`.`Etat` as docEtat,\r\n"
				+ "    `demandedocetudiant`.`DateRetrait`,\r\n"
				+ "    `demandedocetudiant`.`Observation`,\r\n"
				+ "    `filiere`.`Nom_Fr`,\r\n"
				+ "    `mention`.`Nom_Fr`,\r\n"
				+ "    `optionbac`.`Nom_Fr`,\r\n"
				+ "    `etablissement`.`Nom_Fr`,\r\n"
				+ "    `parent`.`UtilisateurID`\r\n"
				+ "FROM\r\n"
				+ "    `etudiant`,\r\n"
				+ "    `typedocumentetudiant`,\r\n"
				+ "    `demandedocetudiant`,\r\n"
				+ "    `filiere`,\r\n"
				+ "    `mention`,\r\n"
				+ "    `optionbac`,\r\n"
				+ "    `etablissement`,\r\n"
				+ "    `parent`,\r\n"
				+ "    `utilisateur`\r\n"
				+ "WHERE\r\n"
				+ "    `demandedocetudiant`.`TypeDocumentEtudiantID` = `typedocumentetudiant`.`ID` AND `demandedocetudiant`.`EtudiantUtilisateurID` = `etudiant`.`UtilisateurID` AND `etudiant`.`EtablissementID` = `etablissement`.`ID` AND `etudiant`.`FiliereID` = `filiere`.`ID` AND `etudiant`.`OptionBacID` = `optionbac`.`ID` AND `etudiant`.`MentionID` = `mention`.`ID` AND `etudiant`.`ParentUtilisateurID` = `parent`.`UtilisateurID` AND `etudiant`.`UtilisateurID` = `utilisateur`.`ID`;";
		
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(sql); 
		ResultSet rs = statement.executeQuery();
		
		while (rs.next()) {
		DemandeDocEtudiant demande = new DemandeDocEtudiant();	
			                                                                         
		demande.setId(rs.getInt("ID"));
		demande.setDate(rs.getDate("Date"));
		demande.setEtat(rs.getString("docEtat"));
		demande.setDateRetrait(rs.getDate("DateRetrait"));
		demande.setObservation(rs.getString("Observation"));
		
		TypeDocumentEtudiant typeDocEtudiant = new TypeDocumentEtudiant();
		typeDocEtudiant.setId(rs.getInt("typeid"));
		typeDocEtudiant.setCode(rs.getString("Code"));
		typeDocEtudiant.setNom_Fr(rs.getString("Nom_Fr"));
		typeDocEtudiant.setNom_Ar(rs.getString("Nom_Ar"));
		
	    Etudiant etudiant = new Etudiant();
		etudiant = new Etudiant();
		etudiant.setId(rs.getInt("UtilisateurID"));
		etudiant.setCin(rs.getString("Cne"));
		etudiant.setNom_Fr(rs.getString("nom"));
		etudiant.setPrenom_Fr(rs.getString("Prenom_Fr"));
		etudiant.setNom_Ar(rs.getString("Nom_Ar"));
		
		
		demande.setType(typeDocEtudiant);
		demande.setEtudiant(etudiant);
		tab.add(demande);
		
		}	
		rs.close();
		statement.close();
		return tab;
		}catch(SQLException ex) {JOptionPane.showMessageDialog(null,ex.getMessage());
		return null;}	
	}
	public void delete(DemandeDocEtudiant demande) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("delete from `demandedocetudiant` where ID = ?");
		statement.setInt(1, demande.getId());
		statement.execute();
		statement.close();
	}
	
	public void insert(DemandeDocEtudiant demande) throws SQLException{
		String sql = "INSERT INTO `demandedocetudiant`(\r\n"
				+ "    `ID`,\r\n"
				+ "    `TypeDocumentEtudiantID`,\r\n"
				+ "    `Date`,\r\n"
				+ "    `Etat`,\r\n"
				+ ")\r\n"
				+ "VALUES(?, ?, ?, 'en cours')";
		PreparedStatement pst = (PreparedStatement) con.prepareStatement(sql);
		pst.setInt(1,demande.getId());
		pst.setInt(2,demande.getType().getId());
//		pst.setDate(3,(Date) demande.getDate());
		pst.setString(3,demande.getEtat());
		pst.execute();
		pst.close();
	}
	
	
	
	
	public DemandeDocEtudiant getById(int id) throws SQLException{
		String sql = "SELECT\r\n"
				+ "    `etudiant`.`UtilisateurID`,\r\n"
				+ "    `utilisateur`.`Nom_Fr` as nom,\r\n"
				+ "    `utilisateur`.`Prenom_Fr`,\r\n"
				+ "    `etudiant`.`EtablissementID`,\r\n"
				+ "    `etudiant`.`FiliereID`,\r\n"
				+ "    `etudiant`.`Cne`,\r\n"
				+ "    `etudiant`.`NumInscription`,\r\n"
				+ "    `etudiant`.`AnneeBac`,\r\n"
				+ "    `etudiant`.`OptionBacID`,\r\n"
				+ "    `etudiant`.`MoyenneBac`,\r\n"
				+ "    `etudiant`.`MentionID`,\r\n"
				+ "    `etudiant`.`Candidat`,\r\n"
				+ "    `etudiant`.`Etat`,\r\n"
				+ "    `etudiant`.`ParentUtilisateurID`,\r\n"
				+ "    `typedocumentetudiant`.`ID` as typeid,\r\n"
				+ "    `typedocumentetudiant`.`Code`,\r\n"
				+ "    `typedocumentetudiant`.`Nom_Fr`,\r\n"
				+ "    `typedocumentetudiant`.`Nom_Ar`,\r\n"
				+ "    `demandedocetudiant`.`ID`,\r\n"
				+ "    `demandedocetudiant`.`EtudiantUtilisateurID`,\r\n"
				+ "    `demandedocetudiant`.`TypeDocumentEtudiantID`,\r\n"
				+ "    `demandedocetudiant`.`Date`,\r\n"
				+ "    `demandedocetudiant`.`Etat`as docEtat,\r\n"
				+ "    `demandedocetudiant`.`DateRetrait`,\r\n"
				+ "    `demandedocetudiant`.`Observation`,\r\n"
				+ "    `filiere`.`Nom_Fr`,\r\n"
				+ "    `mention`.`Nom_Fr`,\r\n"
				+ "    `optionbac`.`Nom_Fr`,\r\n"
				+ "    `etablissement`.`Nom_Fr`,\r\n"
				+ "    `parent`.`UtilisateurID`\r\n"
				+ "FROM\r\n"
				+ "    `etudiant`,\r\n"
				+ "    `typedocumentetudiant`,\r\n"
				+ "    `demandedocetudiant`,\r\n"
				+ "    `filiere`,\r\n"
				+ "    `mention`,\r\n"
				+ "    `optionbac`,\r\n"
				+ "    `etablissement`,\r\n"
				+ "    `parent`,\r\n"
				+ "    `utilisateur`\r\n"
				+ "WHERE\r\n"
				+ "    `demandedocetudiant`.`TypeDocumentEtudiantID` = `typedocumentetudiant`.`ID` AND `demandedocetudiant`.`EtudiantUtilisateurID` = `etudiant`.`UtilisateurID` AND `etudiant`.`EtablissementID` = `etablissement`.`ID` AND `etudiant`.`FiliereID` = `filiere`.`ID` AND `etudiant`.`OptionBacID` = `optionbac`.`ID` AND `etudiant`.`MentionID` = `mention`.`ID` AND `etudiant`.`ParentUtilisateurID` = `parent`.`UtilisateurID` AND `etudiant`.`UtilisateurID` = `utilisateur`.`ID` and  `demandedocetudiant`.`ID`= ?";
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(sql);
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		DemandeDocEtudiant demande = new DemandeDocEtudiant();
		while (rs.next()) {
			demande.setId(rs.getInt("ID"));
			demande.setDate(rs.getDate("Date"));
			demande.setEtat(rs.getString("docEtat"));
			demande.setDateRetrait(rs.getDate("DateRetrait"));
			demande.setObservation(rs.getString("Observation"));
			TypeDocumentEtudiant typeDocEtudiant = new TypeDocumentEtudiant();
			typeDocEtudiant.setId(rs.getInt("typeid"));
			typeDocEtudiant.setCode(rs.getString("Code"));
			typeDocEtudiant.setNom_Fr(rs.getString("Nom_Fr"));
			typeDocEtudiant.setNom_Ar(rs.getString("Nom_Ar"));
			
		    Etudiant etudiant = new Etudiant();
			etudiant = new Etudiant();
			etudiant.setId(rs.getInt("UtilisateurID"));
			etudiant.setCin(rs.getString("Cne"));
			etudiant.setNom_Fr(rs.getString("nom"));
			etudiant.setPrenom_Fr(rs.getString("Prenom_Fr"));
			etudiant.setNom_Ar(rs.getString("Nom_Ar"));
			
			
			demande.setType(typeDocEtudiant);
			demande.setEtudiant(etudiant);
		}
		rs.close();
		statement.close();
		return demande;		
	}
	
	
	public void update(DemandeDocEtudiant demande) throws SQLException {
		String sql = "UPDATE `demandedocetudiant` SET `Etat`= ?, "
				+ " `DateRetrait` = ? WHERE `ID` = ? ";
		PreparedStatement pst =  (PreparedStatement) con.prepareStatement(sql);
		pst.setString(1,demande.getEtat());
		pst.setDate(2, new java.sql.Date( demande.getDateRetrait().getTime()));
		pst.setInt(3, demande.getId());
		pst.execute();	
		pst.close();
	}
	
	
	
	
	public static void main(String[] args) {
		DemandeDocEtudiantDAO a = new DemandeDocEtudiantDAO();
		 try {
			System.out.println(a.getAll());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
