package dao.matiere;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Domaine.classe.ClasseGenerique;
import Domaine.classe.Cycle;
import Domaine.classe.Filiere;
import Domaine.classe.Niveau;
import Domaine.evaluation.FormeEvaluation;
import Domaine.matiere.ClasseGUnite;
import Domaine.matiere.ConfigurationMatiere;
import Domaine.matiere.Matiere;
import Domaine.matiere.Periode;
import Domaine.matiere.Unite;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dao.database.Db;

public class ConfigurationMatiereDAO {
	private Connection con;
	public ConfigurationMatiereDAO() {
		this.con = Db.getInstance().con;
	}
	public void insert(ConfigurationMatiere configurationMatiere) throws SQLException{
	String query = "INSERT INTO `configurationmatiere` (\r\n" + 
				"`ID` ,\r\n" + 
				"`ClasseGUniteID` ,\r\n" + 
				"`MatiereID` ,\r\n" + 
				"`FormeEvaluationID` ,\r\n" + 
				"`PeriodeID` ,\r\n" + 
				"`VolumeHoraire` ,\r\n" + 
				"`HoraireS1` ,\r\n" + 
				"`HoraireS2` ,\r\n" +
				"`NbreControles` ,\r\n" + 
				"`NoteEliminatoire`\r\n" + 
				")\r\n" + 
				"VALUES (NULL , ?, ?, ?, ?, ?, ?, ?, ?, ? );";
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(query);
		statement.setInt(1, configurationMatiere.getClasseGUnite().getId());
		statement.setInt(2, configurationMatiere.getMatiere().getId());
		statement.setInt(3, configurationMatiere.getFormeControle().getId());
		statement.setInt(4, configurationMatiere.getPeriode().getId());
		statement.setShort(5, configurationMatiere.getVolumeHoraire());
		statement.setShort(6, configurationMatiere.getHoraireS1());
		statement.setShort(7, configurationMatiere.getHoraireS2());
		statement.setShort(8, configurationMatiere.getNbreControles());
		statement.setFloat(9, configurationMatiere.getNoteEliminatoire());
		statement.execute();
		statement.close();
	}
	public ArrayList<ConfigurationMatiere> getAllByClasseGUnite(ClasseGUnite classeGUnite1) throws SQLException{
		String query = "SELECT \r\n" + 
				"	`configurationmatiere`.`ID` AS `configurationmatiereID`,\r\n" +
				"	`configurationmatiere`.`VolumeHoraire`,\r\n" +
				"	`configurationmatiere`.`HoraireS1`,\r\n" +
				"	`configurationmatiere`.`HoraireS2`,\r\n" +
				"	`configurationmatiere`.`NbreControles`,\r\n" +
				"	`configurationmatiere`.`NoteEliminatoire` AS `MatiereNoteEliminatoire`,\r\n" +
				
				"	`formeEvaluation`.`ID` AS `FormeEvaluationID`,\r\n" +
				"	`formeEvaluation`.`Code` AS `FormeEvaluationCode`,\r\n" +
				"	`formeEvaluation`.`Nom_Fr` AS `FormeEvaluationNom_Fr`,\r\n" +
				"	`formeEvaluation`.`Nom_Ar` AS `FormeEvaluationNom_Ar`,\r\n" +
				
				"	`periode`.`ID` AS `PeriodeID`,\r\n" +
				"	`periode`.`Code` AS `PeriodeCode`,\r\n" +
				"	`periode`.`Nom_Fr` AS `PeriodeNom_Fr`,\r\n" +
				"	`periode`.`Nom_Ar` AS `PeriodeNom_Ar`,\r\n" +
				
				"	`matiere`.`ID` AS `MatiereID`,\r\n" +
				"	`matiere`.`Code` AS `MatiereCode`,\r\n" +
				"	`matiere`.`Nom_Fr` AS `MatiereNom_Fr`,\r\n" + 
				"	`matiere`.`Nom_Ar` AS `MatiereNom_Ar`,\r\n" +
				"	`classeGUnite`.`ID` AS `ClasseGUniteID`,\r\n" +
				"	`classeGUnite`.`NoteEliminatoire` AS `UniteNoteEliminatoire`,\r\n" +
				"	`unite`.`ID` AS `UniteID`,\r\n" + 
				"	`unite`.`Code` AS `UniteCode`,\r\n" + 
				"	`unite`.`Nom_Fr` AS `UniteNom_Fr`,\r\n" +
				"	`unite`.`Nom_Ar` AS `UniteNom_Ar`,\r\n" +
				"	`classegenerique`.`ID` AS `ClassegeneriqueID`,\r\n" +
				"	`classegenerique`.`Description` AS `ClassegeneriqueDescription`,\r\n" +
				"	`cycle`.`ID` AS `CycleID`,\r\n" + 
				"	`cycle`.`Code` AS `CycleCode`,\r\n" + 
				"	`cycle`.`Nom_Fr` AS `CycleNom_Fr`,\r\n" +
				"	`cycle`.`Nom_Ar` AS `CycleNom_Ar`,\r\n" +
				"	`filiere`.`ID` AS `FiliereID`,\r\n" + 
				"	`filiere`.`Code` AS `FiliereCode`,\r\n" +
				"	`filiere`.`Nom_Fr` AS `FiliereNom_Fr`,\r\n" + 
				"	`filiere`.`Nom_Ar` AS `FiliereNom_Ar`,\r\n" +
				"	`niveau`.`ID` AS `NiveauID`,\r\n" + 
				"	`niveau`.`Code` AS `NiveauCode`,\r\n" + 
				"	`niveau`.`Nom_Fr` AS `NiveauNom_Fr`,\r\n" + 
				"	`niveau`.`Nom_Ar` AS `NiveauNom_Ar`\r\n" +
				"	FROM `configurationmatiere`,`formeEvaluation`,`periode`,`matiere`,`classegunite`,`unite` ,`classegenerique`,`cycle`, `filiere`, `niveau`\r\n" + 
				"	WHERE \r\n" + 
				"	(`configurationmatiere`.`MatiereID`= `matiere`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`classeguniteID`= `classegunite`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`FormeEvaluationID`= `formeEvaluation`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`PeriodeID`= `periode`.`ID`) AND\r\n" +
				
				"	(`classegunite`.`UniteID`= `unite`.`ID`) AND\r\n" +
				"	(`classegunite`.`ClasseGeneriqueID`= `classegenerique`.`ID`) AND\r\n" +
			
				"	(`classegenerique`.`CycleID`= `cycle`.`ID`) AND\r\n" + 
				"	(`classegenerique`.`FiliereID`= `filiere`.`ID`) AND\r\n" + 
				"	(`classegenerique`.`NiveauID`= `niveau`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`classeguniteID`= ?);";
		
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(query);
		statement.setInt(1, classeGUnite1.getId());
		ResultSet rs = statement.executeQuery();
		ArrayList<ConfigurationMatiere> configurationMatieres = new ArrayList<ConfigurationMatiere>();
		
		while (rs.next()) {
			
			ConfigurationMatiere configurationMatiere = new ConfigurationMatiere();
			
			configurationMatiere.setId(rs.getInt("configurationmatiereID"));
			configurationMatiere.setVolumeHoraire(rs.getShort("VolumeHoraire"));
			configurationMatiere.setHoraireS1(rs.getShort("HoraireS1"));
			configurationMatiere.setHoraireS2(rs.getShort("HoraireS2"));
			configurationMatiere.setNbreControles(rs.getShort("NbreControles"));
			configurationMatiere.setNoteEliminatoire(rs.getFloat("MatiereNoteEliminatoire"));
			
			FormeEvaluation formeControle = new FormeEvaluation();
			formeControle.setId(rs.getInt("FormeEvaluationID"));
			formeControle.setCode(rs.getString("FormeEvaluationCode"));
			formeControle.setNom_Fr(rs.getString("FormeEvaluationNom_Fr"));
			formeControle.setNom_Ar(rs.getString("FormeEvaluationNom_Fr"));
			
			configurationMatiere.setFormeControle(formeControle);
			
			Periode periode = new Periode();
			periode.setId(rs.getInt("PeriodeID"));
			periode.setCode(rs.getString("PeriodeCode"));
			periode.setNom_Fr(rs.getString("PeriodeNom_Fr"));
			periode.setNom_Ar(rs.getString("PeriodeNom_Ar"));
			
			configurationMatiere.setPeriode(periode);
			
			Matiere matiere = new Matiere();
			matiere.setId(rs.getInt("MatiereID"));
			matiere.setCode(rs.getString("MatiereCode"));
			matiere.setNom_Fr(rs.getString("MatiereNom_Fr"));
			matiere.setNom_Ar(rs.getString("MatiereNom_Ar"));
			
			configurationMatiere.setMatiere(matiere);
			
			
			ClasseGUnite classeGUnite = new ClasseGUnite();
			classeGUnite.setId(rs.getInt("ClasseGUniteID"));
			classeGUnite.setNoteEliminatoire(rs.getFloat("UniteNoteEliminatoire"));
			
			Unite unite= new Unite();
			unite.setId(rs.getInt("UniteID"));
			unite.setCode(rs.getString("UniteCode"));
			unite.setNom_Fr(rs.getString("UniteNom_Fr"));
			unite.setNom_Ar(rs.getString("UniteNom_Ar"));
			
			classeGUnite.setUnite(unite);
			
			
			Cycle cycle= new Cycle();
			cycle.setId(rs.getInt("CycleID"));
			cycle.setCode(rs.getString("CycleCode"));
			cycle.setNom_Fr(rs.getString("CycleNom_Fr"));
			cycle.setNom_Ar(rs.getString("CycleNom_Ar"));
			
			Filiere filiere = new Filiere();
			filiere.setId(rs.getInt("FiliereID"));
			filiere.setCode(rs.getString("FiliereCode"));
			filiere.setNom_Fr(rs.getString("FiliereNom_Fr"));
			filiere.setNom_Ar(rs.getString("FiliereNom_Ar"));
			
			Niveau niveau= new Niveau();
			niveau.setId(rs.getInt("NiveauID"));
			niveau.setCode(rs.getString("NiveauCode"));
			niveau.setNom_Fr(rs.getString("NiveauNom_Fr"));
			niveau.setNom_Ar(rs.getString("NiveauNom_Ar"));
			
			ClasseGenerique classeGenerique =new ClasseGenerique();
			classeGenerique.setCycle(cycle);
			classeGenerique.setFiliere(filiere);
			classeGenerique.setNiveau(niveau);
			classeGenerique.setId(rs.getInt("ClassegeneriqueID"));
			classeGenerique.setDescription(rs.getString("ClassegeneriqueDescription"));
			classeGenerique.setCode();
			
			
			
			classeGUnite.setClasseGenerique(classeGenerique);
			
			configurationMatiere.setClasseGUnite(classeGUnite);
			
			configurationMatieres.add(configurationMatiere);
		}
		rs.close();
		statement.close();
		return configurationMatieres;
	}
	public ConfigurationMatiere getById(int id) throws SQLException{
		String query = "SELECT \r\n" + 
				"	`configurationmatiere`.`ID` AS `configurationmatiereID`,\r\n" +
				"	`configurationmatiere`.`VolumeHoraire`,\r\n" +
				"	`configurationmatiere`.`HoraireS1`,\r\n" +
				"	`configurationmatiere`.`HoraireS2`,\r\n" +
				"	`configurationmatiere`.`NbreControles`,\r\n" +
				"	`configurationmatiere`.`NoteEliminatoire` AS `MatiereNoteEliminatoire`,\r\n" +
				
				"	`formeEvaluation`.`ID` AS `FormeEvaluationID`,\r\n" +
				"	`formeEvaluation`.`Code` AS `FormeEvaluationCode`,\r\n" +
				"	`formeEvaluation`.`Nom_Fr` AS `FormeEvaluationNom_Fr`,\r\n" +
				"	`formeEvaluation`.`Nom_Ar` AS `FormeEvaluationNom_Ar`,\r\n" +
				
				"	`periode`.`ID` AS `PeriodeID`,\r\n" +
				"	`periode`.`Code` AS `PeriodeCode`,\r\n" +
				"	`periode`.`Nom_Fr` AS `PeriodeNom_Fr`,\r\n" +
				"	`periode`.`Nom_Ar` AS `PeriodeNom_Ar`,\r\n" +
				
				"	`matiere`.`ID` AS `MatiereID`,\r\n" +
				"	`matiere`.`Code` AS `MatiereCode`,\r\n" +
				"	`matiere`.`Nom_Fr` AS `MatiereNom_Fr`,\r\n" + 
				"	`matiere`.`Nom_Ar` AS `MatiereNom_Ar`,\r\n" +
				"	`classeGUnite`.`ID` AS `ClasseGUniteID`,\r\n" +
				"	`classeGUnite`.`NoteEliminatoire` AS `UniteNoteEliminatoire`,\r\n" +
				"	`unite`.`ID` AS `UniteID`,\r\n" + 
				"	`unite`.`Code` AS `UniteCode`,\r\n" + 
				"	`unite`.`Nom_Fr` AS `UniteNom_Fr`,\r\n" +
				"	`unite`.`Nom_Ar` AS `UniteNom_Ar`,\r\n" +
				"	`classegenerique`.`ID` AS `ClassegeneriqueID`,\r\n" +
				"	`classegenerique`.`Description` AS `ClassegeneriqueDescription`,\r\n" +
				"	`cycle`.`ID` AS `CycleID`,\r\n" + 
				"	`cycle`.`Code` AS `CycleCode`,\r\n" + 
				"	`cycle`.`Nom_Fr` AS `CycleNom_Fr`,\r\n" +
				"	`cycle`.`Nom_Ar` AS `CycleNom_Ar`,\r\n" +
				"	`filiere`.`ID` AS `FiliereID`,\r\n" + 
				"	`filiere`.`Code` AS `FiliereCode`,\r\n" +
				"	`filiere`.`Nom_Fr` AS `FiliereNom_Fr`,\r\n" + 
				"	`filiere`.`Nom_Ar` AS `FiliereNom_Ar`,\r\n" +
				"	`niveau`.`ID` AS `NiveauID`,\r\n" + 
				"	`niveau`.`Code` AS `NiveauCode`,\r\n" + 
				"	`niveau`.`Nom_Fr` AS `NiveauNom_Fr`,\r\n" + 
				"	`niveau`.`Nom_Ar` AS `NiveauNom_Ar`\r\n" +
				"	FROM `configurationmatiere`,`formeEvaluation`,`periode`,`matiere`,`classegunite`,`unite` ,`classegenerique`,`cycle`, `filiere`, `niveau`\r\n" + 
				"	WHERE \r\n" + 
				"	(`configurationmatiere`.`MatiereID`= `matiere`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`classeguniteID`= `classegunite`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`FormeEvaluationID`= `formeEvaluation`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`PeriodeID`= `periode`.`ID`) AND\r\n" +
				
				"	(`classegunite`.`UniteID`= `unite`.`ID`) AND\r\n" +
				"	(`classegunite`.`ClasseGeneriqueID`= `classegenerique`.`ID`) AND\r\n" +
			
				"	(`classegenerique`.`CycleID`= `cycle`.`ID`) AND\r\n" + 
				"	(`classegenerique`.`FiliereID`= `filiere`.`ID`) AND\r\n" + 
				"	(`classegenerique`.`NiveauID`= `niveau`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`ID`= ?);";
		
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(query);
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		ConfigurationMatiere configurationMatiere = new ConfigurationMatiere();
		
		while (rs.next()) {
			
			configurationMatiere.setId(rs.getInt("configurationmatiereID"));
			configurationMatiere.setVolumeHoraire(rs.getShort("VolumeHoraire"));
			configurationMatiere.setHoraireS1(rs.getShort("HoraireS1"));
			configurationMatiere.setHoraireS2(rs.getShort("HoraireS2"));
			configurationMatiere.setNbreControles(rs.getShort("NbreControles"));
			configurationMatiere.setNoteEliminatoire(rs.getFloat("MatiereNoteEliminatoire"));
			
			FormeEvaluation formeControle = new FormeEvaluation();
			formeControle.setId(rs.getInt("FormeEvaluationID"));
			formeControle.setCode(rs.getString("FormeEvaluationCode"));
			formeControle.setNom_Fr(rs.getString("FormeEvaluationNom_Fr"));
			formeControle.setNom_Ar(rs.getString("FormeEvaluationNom_Fr"));
			
			configurationMatiere.setFormeControle(formeControle);
			
			Periode periode = new Periode();
			periode.setId(rs.getInt("PeriodeID"));
			periode.setCode(rs.getString("PeriodeCode"));
			periode.setNom_Fr(rs.getString("PeriodeNom_Fr"));
			periode.setNom_Ar(rs.getString("PeriodeNom_Ar"));
			
			configurationMatiere.setPeriode(periode);
			
			Matiere matiere = new Matiere();
			matiere.setId(rs.getInt("MatiereID"));
			matiere.setCode(rs.getString("MatiereCode"));
			matiere.setNom_Fr(rs.getString("MatiereNom_Fr"));
			matiere.setNom_Ar(rs.getString("MatiereNom_Ar"));
			
			configurationMatiere.setMatiere(matiere);
			
			
			ClasseGUnite classeGUnite = new ClasseGUnite();
			classeGUnite.setId(rs.getInt("ClasseGUniteID"));
			classeGUnite.setNoteEliminatoire(rs.getFloat("UniteNoteEliminatoire"));
			
			Unite unite= new Unite();
			unite.setId(rs.getInt("UniteID"));
			unite.setCode(rs.getString("UniteCode"));
			unite.setNom_Fr(rs.getString("UniteNom_Fr"));
			unite.setNom_Ar(rs.getString("UniteNom_Ar"));
			
			classeGUnite.setUnite(unite);
			
			
			Cycle cycle= new Cycle();
			cycle.setId(rs.getInt("CycleID"));
			cycle.setCode(rs.getString("CycleCode"));
			cycle.setNom_Fr(rs.getString("CycleNom_Fr"));
			cycle.setNom_Ar(rs.getString("CycleNom_Ar"));
			
			Filiere filiere = new Filiere();
			filiere.setId(rs.getInt("FiliereID"));
			filiere.setCode(rs.getString("FiliereCode"));
			filiere.setNom_Fr(rs.getString("FiliereNom_Fr"));
			filiere.setNom_Ar(rs.getString("FiliereNom_Ar"));
			
			Niveau niveau= new Niveau();
			niveau.setId(rs.getInt("NiveauID"));
			niveau.setCode(rs.getString("NiveauCode"));
			niveau.setNom_Fr(rs.getString("NiveauNom_Fr"));
			niveau.setNom_Ar(rs.getString("NiveauNom_Ar"));
			
			ClasseGenerique classeGenerique =new ClasseGenerique();
			classeGenerique.setCycle(cycle);
			classeGenerique.setFiliere(filiere);
			classeGenerique.setNiveau(niveau);
			classeGenerique.setId(rs.getInt("ClassegeneriqueID"));
			classeGenerique.setDescription(rs.getString("ClassegeneriqueDescription"));
			classeGenerique.setCode();
			
			
			
			classeGUnite.setClasseGenerique(classeGenerique);
			configurationMatiere.setClasseGUnite(classeGUnite);
			
			
		}
		rs.close();
		statement.close();
		return configurationMatiere;
	}
	public void update(ConfigurationMatiere configurationMatiere) throws SQLException{
		String query = "UPDATE `configurationmatiere` \r\n" + 
					" SET \r\n" +  
					"`ClasseGUniteID` = ? ,\r\n" + 
					"`MatiereID` = ? ,\r\n" + 
					"`FormeEvaluationID` = ? ,\r\n" + 
					"`PeriodeID` = ? ,\r\n" + 
					"`VolumeHoraire`  = ? ,\r\n" + 
					"`HoraireS1`  = ? ,\r\n" + 
					"`HoraireS2`  = ? ,\r\n" +
					"`NbreControles`  = ? ,\r\n" + 
					"`NoteEliminatoire`  = ? \r\n" + 
					" WHERE \r\n" + 
					"(`ID` = ?  );";
			PreparedStatement statement = (PreparedStatement) con.prepareStatement(query);
			statement.setInt(1, configurationMatiere.getClasseGUnite().getId());
			statement.setInt(2, configurationMatiere.getMatiere().getId());
			statement.setInt(3, configurationMatiere.getFormeControle().getId());
			statement.setInt(4, configurationMatiere.getPeriode().getId());
			statement.setShort(5, configurationMatiere.getVolumeHoraire());
			statement.setShort(6, configurationMatiere.getHoraireS1());
			statement.setShort(7, configurationMatiere.getHoraireS2());
			statement.setShort(8, configurationMatiere.getNbreControles());
			statement.setFloat(9, configurationMatiere.getNoteEliminatoire());
			statement.setFloat(10, configurationMatiere.getId());
			statement.execute();
			statement.close();
		}
	public void delete(ConfigurationMatiere configurationMatiere) throws SQLException{
		String query = "DELETE FROM `configurationmatiere` \r\n" + 
					" WHERE \r\n" + 
					"`ID` = ?  ;";
			PreparedStatement statement = (PreparedStatement) con.prepareStatement(query);
			statement.setFloat(1, configurationMatiere.getId());
			statement.execute();
			statement.close();
	}
	
	public ConfigurationMatiere exists(ConfigurationMatiere configurationMatiere) throws SQLException{
		String query = "SELECT \r\n" + 
				"	`configurationmatiere`.`ID` AS `configurationmatiereID`,\r\n" +
				"	`configurationmatiere`.`VolumeHoraire`,\r\n" +
				"	`configurationmatiere`.`HoraireS1`,\r\n" +
				"	`configurationmatiere`.`HoraireS2`,\r\n" +
				"	`configurationmatiere`.`NbreControles`,\r\n" +
				"	`configurationmatiere`.`NoteEliminatoire` AS `MatiereNoteEliminatoire`,\r\n" +
				
				"	`formeEvaluation`.`ID` AS `FormeEvaluationID`,\r\n" +
				"	`formeEvaluation`.`Code` AS `FormeEvaluationCode`,\r\n" +
				"	`formeEvaluation`.`Nom_Fr` AS `FormeEvaluationNom_Fr`,\r\n" +
				"	`formeEvaluation`.`Nom_Ar` AS `FormeEvaluationNom_Ar`,\r\n" +
				
				"	`periode`.`ID` AS `PeriodeID`,\r\n" +
				"	`periode`.`Code` AS `PeriodeCode`,\r\n" +
				"	`periode`.`Nom_Fr` AS `PeriodeNom_Fr`,\r\n" +
				"	`periode`.`Nom_Ar` AS `PeriodeNom_Ar`,\r\n" +
				
				"	`matiere`.`ID` AS `MatiereID`,\r\n" +
				"	`matiere`.`Code` AS `MatiereCode`,\r\n" +
				"	`matiere`.`Nom_Fr` AS `MatiereNom_Fr`,\r\n" + 
				"	`matiere`.`Nom_Ar` AS `MatiereNom_Ar`,\r\n" +
				"	`classeGUnite`.`ID` AS `ClasseGUniteID`,\r\n" +
				"	`classeGUnite`.`NoteEliminatoire` AS `UniteNoteEliminatoire`,\r\n" +
				"	`unite`.`ID` AS `UniteID`,\r\n" + 
				"	`unite`.`Code` AS `UniteCode`,\r\n" + 
				"	`unite`.`Nom_Fr` AS `UniteNom_Fr`,\r\n" +
				"	`unite`.`Nom_Ar` AS `UniteNom_Ar`,\r\n" +
				"	`classegenerique`.`ID` AS `ClassegeneriqueID`,\r\n" +
				"	`classegenerique`.`Description` AS `ClassegeneriqueDescription`,\r\n" +
				"	`cycle`.`ID` AS `CycleID`,\r\n" + 
				"	`cycle`.`Code` AS `CycleCode`,\r\n" + 
				"	`cycle`.`Nom_Fr` AS `CycleNom_Fr`,\r\n" +
				"	`cycle`.`Nom_Ar` AS `CycleNom_Ar`,\r\n" +
				"	`filiere`.`ID` AS `FiliereID`,\r\n" + 
				"	`filiere`.`Code` AS `FiliereCode`,\r\n" +
				"	`filiere`.`Nom_Fr` AS `FiliereNom_Fr`,\r\n" + 
				"	`filiere`.`Nom_Ar` AS `FiliereNom_Ar`,\r\n" +
				"	`niveau`.`ID` AS `NiveauID`,\r\n" + 
				"	`niveau`.`Code` AS `NiveauCode`,\r\n" + 
				"	`niveau`.`Nom_Fr` AS `NiveauNom_Fr`,\r\n" + 
				"	`niveau`.`Nom_Ar` AS `NiveauNom_Ar`\r\n" +
				"	FROM `configurationmatiere`,`formeEvaluation`,`periode`,`matiere`,`classegunite`,`unite` ,`classegenerique`,`cycle`, `filiere`, `niveau`\r\n" + 
				"	WHERE \r\n" + 
				"	(`configurationmatiere`.`MatiereID`= `matiere`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`classeguniteID`= `classegunite`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`FormeEvaluationID`= `formeEvaluation`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`PeriodeID`= `periode`.`ID`) AND\r\n" +
				
				"	(`classegunite`.`UniteID`= `unite`.`ID`) AND\r\n" +
				"	(`classegunite`.`ClasseGeneriqueID`= `classegenerique`.`ID`) AND\r\n" +
			
				"	(`classegenerique`.`CycleID`= `cycle`.`ID`) AND\r\n" + 
				"	(`classegenerique`.`FiliereID`= `filiere`.`ID`) AND\r\n" + 
				"	(`classegenerique`.`NiveauID`= `niveau`.`ID`) AND\r\n" +
				"	(`configurationmatiere`.`classeguniteID`= ?) AND\r\n" +
				"	(`configurationmatiere`.`MatiereID`= ?);";
		
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(query);
		statement.setInt(1, configurationMatiere.getClasseGUnite().getId());
		statement.setInt(2, configurationMatiere.getMatiere().getId());
		ResultSet rs = statement.executeQuery();
		ConfigurationMatiere configurationMatiereResult = null;
		
		while (rs.next()) {
			configurationMatiereResult = new ConfigurationMatiere();
			configurationMatiereResult.setId(rs.getInt("configurationmatiereID"));
			configurationMatiereResult.setVolumeHoraire(rs.getShort("VolumeHoraire"));
			configurationMatiereResult.setHoraireS1(rs.getShort("HoraireS1"));
			configurationMatiereResult.setHoraireS2(rs.getShort("HoraireS2"));
			configurationMatiereResult.setNbreControles(rs.getShort("NbreControles"));
			configurationMatiereResult.setNoteEliminatoire(rs.getFloat("MatiereNoteEliminatoire"));
			
			FormeEvaluation formeControle = new FormeEvaluation();
			formeControle.setId(rs.getInt("FormeEvaluationID"));
			formeControle.setCode(rs.getString("FormeEvaluationCode"));
			formeControle.setNom_Fr(rs.getString("FormeEvaluationNom_Fr"));
			formeControle.setNom_Ar(rs.getString("FormeEvaluationNom_Fr"));
			
			configurationMatiereResult.setFormeControle(formeControle);
			
			Periode periode = new Periode();
			periode.setId(rs.getInt("PeriodeID"));
			periode.setCode(rs.getString("PeriodeCode"));
			periode.setNom_Fr(rs.getString("PeriodeNom_Fr"));
			periode.setNom_Ar(rs.getString("PeriodeNom_Ar"));
			
			configurationMatiereResult.setPeriode(periode);
			
			Matiere matiere = new Matiere();
			matiere.setId(rs.getInt("MatiereID"));
			matiere.setCode(rs.getString("MatiereCode"));
			matiere.setNom_Fr(rs.getString("MatiereNom_Fr"));
			matiere.setNom_Ar(rs.getString("MatiereNom_Ar"));
			
			configurationMatiereResult.setMatiere(matiere);
			
			
			ClasseGUnite classeGUnite = new ClasseGUnite();
			classeGUnite.setId(rs.getInt("ClasseGUniteID"));
			classeGUnite.setNoteEliminatoire(rs.getFloat("UniteNoteEliminatoire"));
			
			Unite unite= new Unite();
			unite.setId(rs.getInt("UniteID"));
			unite.setCode(rs.getString("UniteCode"));
			unite.setNom_Fr(rs.getString("UniteNom_Fr"));
			unite.setNom_Ar(rs.getString("UniteNom_Ar"));
			
			classeGUnite.setUnite(unite);
			
			
			Cycle cycle= new Cycle();
			cycle.setId(rs.getInt("CycleID"));
			cycle.setCode(rs.getString("CycleCode"));
			cycle.setNom_Fr(rs.getString("CycleNom_Fr"));
			cycle.setNom_Ar(rs.getString("CycleNom_Ar"));
			
			Filiere filiere = new Filiere();
			filiere.setId(rs.getInt("FiliereID"));
			filiere.setCode(rs.getString("FiliereCode"));
			filiere.setNom_Fr(rs.getString("FiliereNom_Fr"));
			filiere.setNom_Ar(rs.getString("FiliereNom_Ar"));
			
			Niveau niveau= new Niveau();
			niveau.setId(rs.getInt("NiveauID"));
			niveau.setCode(rs.getString("NiveauCode"));
			niveau.setNom_Fr(rs.getString("NiveauNom_Fr"));
			niveau.setNom_Ar(rs.getString("NiveauNom_Ar"));
			
			ClasseGenerique classeGenerique =new ClasseGenerique();
			classeGenerique.setCycle(cycle);
			classeGenerique.setFiliere(filiere);
			classeGenerique.setNiveau(niveau);
			classeGenerique.setId(rs.getInt("ClassegeneriqueID"));
			classeGenerique.setDescription(rs.getString("ClassegeneriqueDescription"));
			classeGenerique.setCode();
			
			
			
			classeGUnite.setClasseGenerique(classeGenerique);
			configurationMatiereResult.setClasseGUnite(classeGUnite);
			
			
		}
		rs.close();
		statement.close();
		return configurationMatiereResult;
	}
}
