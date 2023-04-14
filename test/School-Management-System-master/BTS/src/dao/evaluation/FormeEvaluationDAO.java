package dao.evaluation;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Domaine.evaluation.FormeEvaluation;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


import dao.database.Db;

public class FormeEvaluationDAO {
	private Connection con;
	public FormeEvaluationDAO() {
		this.con = Db.getInstance().con;
	}
	public void insert(FormeEvaluation formeEvaluation) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("insert into formeEvaluation (ID, Code, Nom_Fr, Nom_Ar) values (null, ?, ?, ?)");
		statement.setString(1, formeEvaluation.getCode());
		statement.setString(2, formeEvaluation.getNom_Fr());
		statement.setString(3, formeEvaluation.getNom_Ar());
		statement.execute();
		statement.close();
	}
	public ArrayList<FormeEvaluation> getAll() throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("select ID, Code, Nom_Fr, Nom_Ar from formeEvaluation");
		ResultSet rs = statement.executeQuery();
		ArrayList<FormeEvaluation> formeEvaluations = new ArrayList<FormeEvaluation>();
		while (rs.next()) {
			FormeEvaluation formeEvaluation = new FormeEvaluation();
			formeEvaluation.setId(rs.getInt("ID"));
			formeEvaluation.setCode(rs.getString("Code"));
			formeEvaluation.setNom_Fr(rs.getString("Nom_Fr"));
			formeEvaluation.setNom_Ar(rs.getString("Nom_Ar"));
			formeEvaluations.add(formeEvaluation);
		}
		rs.close();
		statement.close();
		return formeEvaluations;	
	}
	public FormeEvaluation getById(int id) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("select ID, Code, Nom_Fr, Nom_Ar from formeEvaluation where ID = ? ");
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		FormeEvaluation formeEvaluation = new FormeEvaluation();
		while (rs.next()) {
			formeEvaluation.setId(rs.getInt("ID"));
			formeEvaluation.setCode(rs.getString("Code"));
			formeEvaluation.setNom_Fr(rs.getString("Nom_Fr"));
			formeEvaluation.setNom_Ar(rs.getString("Nom_Ar"));
		}
		rs.close();
		statement.close();
		return formeEvaluation;		
	}
	public void update (FormeEvaluation formeEvaluation) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("update formeEvaluation set Code = ?, Nom_Fr = ?, Nom_Ar = ?  where ID = ?");
		statement.setString(1, formeEvaluation.getCode());
		statement.setString(2, formeEvaluation.getNom_Fr());
		statement.setString(3, formeEvaluation.getNom_Ar());
		statement.setInt(4,formeEvaluation.getId());
		statement.execute();
	}
	public void delete(FormeEvaluation formeEvaluation) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("delete from formeEvaluation where ID = ?");
		statement.setInt(1, formeEvaluation.getId());
		statement.execute();
		statement.close();
	}
}
