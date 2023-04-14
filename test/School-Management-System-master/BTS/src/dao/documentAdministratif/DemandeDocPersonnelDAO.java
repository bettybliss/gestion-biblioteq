package dao.documentAdministratif;
import Domaine.documentAdministratif.*;
import Domaine.personnel.*;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.sql.Date;
import java.util.*;

import javax.swing.JOptionPane;

import dao.database.Db;
import com.mysql.jdbc.PreparedStatement;
public class DemandeDocPersonnelDAO {
	private Connection con;
	public DemandeDocPersonnelDAO() {
		this.con = Db.getInstance().con;
	}
	public ArrayList<DemandeDocPersonnel> getAll(){ 
		try {
		ArrayList<DemandeDocPersonnel> tab = new ArrayList<DemandeDocPersonnel>();
		String sql= "SELECT\r\n"
				+ "    `demandedocpersonnel`.`ID`,\r\n"
				+ "    `demandedocpersonnel`.`PersonnelUtilisateurID`,\r\n"
				+ "    `demandedocpersonnel`.`TypeDocumentPersonnelID`,\r\n"
				+ "    `demandedocpersonnel`.`Date`,\r\n"
				+ "    `demandedocpersonnel`.`Etat`,\r\n"
				+ "    `demandedocpersonnel`.`DateRetrait`,\r\n"
				+ "    `demandedocpersonnel`.`Observation`,\r\n"
				+ "    `typedocumentpersonnel`.`ID` as typeid,\r\n"
				+ "    `typedocumentpersonnel`.`Code`,\r\n"
				+ "    `typedocumentpersonnel`.`Nom_Fr`,\r\n"
				+ "    `typedocumentpersonnel`.`Nom_Ar`,\r\n"
				+ "    `personnel`.`UtilisateurID`,\r\n"
				+ "    `personnel`.`Som`,\r\n"
				+ "    `personnel`.`DateEmbauche`,\r\n"
				+ "    `personnel`.`DateAffectation`,\r\n"
				+ "    `personnel`.`NbrEnfants`,\r\n"
				+ "    `personnel`.`Etat`,\r\n"
				+ "    `personnel`.`SomConjoint`,\r\n"
				+ "    `personnel`.`NumContrat`,\r\n"
				+ "    `personnel`.`CadreID`,\r\n"
				+ "    `personnel`.`SituationAdministrativeID`,\r\n"
				+ "    `personnel`.`FonctionActuelleID`,\r\n"
				+ "    `cadre`.`Nom_Fr`,\r\n"
				+ "    `situationadministrative`.`Nom_Fr`,\r\n"
				+ "    `fonction`.`Nom_Fr`,\r\n"
				+ "    `utilisateur`.`Nom_Fr` as nom,\r\n"
				+ "    `utilisateur`.`Prenom_Fr`\r\n"
				+ "FROM\r\n"
				+ "    `demandedocpersonnel`,\r\n"
				+ "    `typedocumentpersonnel`,\r\n"
				+ "    `personnel`,\r\n"
				+ "    `cadre`,\r\n"
				+ "    `situationadministrative`,\r\n"
				+ "    `fonction`,\r\n"
				+ "    `utilisateur`\r\n"
				+ "WHERE\r\n"
				+ "    `demandedocpersonnel`.`PersonnelUtilisateurID` = `personnel`.`UtilisateurID` AND `demandedocpersonnel`.`TypeDocumentPersonnelID` = `typedocumentpersonnel`.`ID` AND `personnel`.`CadreID` = `cadre`.`ID` AND `personnel`.`SituationAdministrativeID` = `situationadministrative`.`ID` AND `personnel`.`FonctionActuelleID` = `fonction`.`ID`and\r\n"
				+ "    `personnel`.`UtilisateurID` = `utilisateur`.`ID`;";
		
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(sql); 
		ResultSet rs = statement.executeQuery();
		
		while (rs.next()) {
			DemandeDocPersonnel demande = new DemandeDocPersonnel();	
			                                                                         
		demande.setId(rs.getInt("ID"));
		demande.setDate(rs.getDate("Date"));
		demande.setEtat(rs.getString("Etat"));
		demande.setDateRetrait(rs.getDate("DateRetrait"));
		demande.setObservation(rs.getString("Observation"));
		
		TypeDocumentPersonnel typeDocPersonnel = new TypeDocumentPersonnel();
		typeDocPersonnel.setId(rs.getInt("typeid"));
		typeDocPersonnel.setCode(rs.getString("Code"));
		typeDocPersonnel.setNom_Fr(rs.getString("Nom_Fr"));
		typeDocPersonnel.setNom_Ar(rs.getString("Nom_Ar"));
		
	    Personnel personnel= new Personnel();
	    personnel = new Personnel();
	    personnel.setId(rs.getInt("UtilisateurID"));
	    personnel.setNom_Fr(rs.getString("nom"));
	    personnel.setPrenom_Fr(rs.getString("Prenom_Fr"));
	    personnel.setNom_Ar(rs.getString("Nom_Ar"));
		
		
		demande.setType(typeDocPersonnel);
		demande.setPersonnel(personnel);
		tab.add(demande);
		
		}	
		rs.close();
		statement.close();
		return tab;
		}catch(SQLException ex) {JOptionPane.showMessageDialog(null,ex.getMessage());
		return null;}	
	}
	public DemandeDocPersonnel getById(int id) throws SQLException{
		String sql = "SELECT\r\n"
				+ "    `demandedocpersonnel`.`ID`,\r\n"
				+ "    `demandedocpersonnel`.`PersonnelUtilisateurID`,\r\n"
				+ "    `demandedocpersonnel`.`TypeDocumentPersonnelID`,\r\n"
				+ "    `demandedocpersonnel`.`Date`,\r\n"
				+ "    `demandedocpersonnel`.`Etat`,\r\n"
				+ "    `demandedocpersonnel`.`DateRetrait`,\r\n"
				+ "    `demandedocpersonnel`.`Observation`,\r\n"
				+ "    `typedocumentpersonnel`.`ID` as typeid,\r\n"
				+ "    `typedocumentpersonnel`.`Code`,\r\n"
				+ "    `typedocumentpersonnel`.`Nom_Fr`,\r\n"
				+ "    `typedocumentpersonnel`.`Nom_Ar`,\r\n"
				+ "    `personnel`.`UtilisateurID`,\r\n"
				+ "    `personnel`.`Som`,\r\n"
				+ "    `personnel`.`DateEmbauche`,\r\n"
				+ "    `personnel`.`DateAffectation`,\r\n"
				+ "    `personnel`.`NbrEnfants`,\r\n"
				+ "    `personnel`.`Etat`,\r\n"
				+ "    `personnel`.`SomConjoint`,\r\n"
				+ "    `personnel`.`NumContrat`,\r\n"
				+ "    `personnel`.`CadreID`,\r\n"
				+ "    `personnel`.`SituationAdministrativeID`,\r\n"
				+ "    `personnel`.`FonctionActuelleID`,\r\n"
				+ "    `cadre`.`Nom_Fr`,\r\n"
				+ "    `situationadministrative`.`Nom_Fr`,\r\n"
				+ "    `fonction`.`Nom_Fr`,\r\n"
				+ "    `utilisateur`.`Nom_Fr` as nom,\r\n"
				+ "    `utilisateur`.`Prenom_Fr`\r\n"
				+ "FROM\r\n"
				+ "    `demandedocpersonnel`,\r\n"
				+ "    `typedocumentpersonnel`,\r\n"
				+ "    `personnel`,\r\n"
				+ "    `cadre`,\r\n"
				+ "    `situationadministrative`,\r\n"
				+ "    `fonction`,\r\n"
				+ "    `utilisateur`\r\n"
				+ "WHERE\r\n"
				+ "    `demandedocpersonnel`.`PersonnelUtilisateurID` = `personnel`.`UtilisateurID` AND `demandedocpersonnel`.`TypeDocumentPersonnelID` = `typedocumentpersonnel`.`ID` AND `personnel`.`CadreID` = `cadre`.`ID` AND `personnel`.`SituationAdministrativeID` = `situationadministrative`.`ID` AND `personnel`.`FonctionActuelleID` = `fonction`.`ID`and\r\n"
				+ "    `personnel`.`UtilisateurID` = `utilisateur`.`ID` and  `demandedocpersonnel`.`ID`= ?";
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(sql);
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		DemandeDocPersonnel demande = new DemandeDocPersonnel();	
		while (rs.next()) {
            
			demande.setId(rs.getInt("ID"));
			demande.setDate(rs.getDate("Date"));
			demande.setEtat(rs.getString("Etat"));
			demande.setDateRetrait(rs.getDate("DateRetrait"));
			demande.setObservation(rs.getString("Observation"));
			
			TypeDocumentPersonnel typeDocPersonnel = new TypeDocumentPersonnel();
			typeDocPersonnel.setId(rs.getInt("typeid"));
			typeDocPersonnel.setCode(rs.getString("Code"));
			typeDocPersonnel.setNom_Fr(rs.getString("Nom_Fr"));
			typeDocPersonnel.setNom_Ar(rs.getString("Nom_Ar"));
			
		    Personnel personnel= new Personnel();
		    personnel = new Personnel();
		    personnel.setId(rs.getInt("UtilisateurID"));
		    personnel.setNom_Fr(rs.getString("nom"));
		    personnel.setPrenom_Fr(rs.getString("Prenom_Fr"));
		    personnel.setNom_Ar(rs.getString("Nom_Ar"));
			
			
			demande.setType(typeDocPersonnel);
			demande.setPersonnel(personnel);
			
		}
		rs.close();
		statement.close();
		return demande;		
	}
	public void delete(DemandeDocPersonnel demande) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("delete from `demandedocpersonnel` where `ID` = ?");
		statement.setInt(1, demande.getId());
		statement.execute();
		statement.close();
	}

	
	public void update(DemandeDocPersonnel demande) throws SQLException {
		String sql = "UPDATE `demandedocpersonnel` SET `Etat`= ? , `DateRetrait`= ? WHERE `ID` = ?";
		PreparedStatement pst =  (PreparedStatement) con.prepareStatement(sql);
		pst.setString(1,demande.getEtat());
		pst.setDate(2, new java.sql.Date( demande.getDateRetrait().getTime()));
		pst.setInt(3, demande.getId());
		pst.execute();
		pst.close();
	}
}
