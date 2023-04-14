package dao.documentAdministratif;
import Domaine.documentAdministratif.*;
import Domaine.evaluation.Soutenance;

import com.mysql.jdbc.Connection;
import java.sql.*;
import dao.database.Db;
import java.util.*;

import com.mysql.jdbc.PreparedStatement;
public class TypeDocumentPersonnelDAO {
	private Connection con;
	public TypeDocumentPersonnelDAO() {
		this.con = Db.getInstance().con;
	}
	public ArrayList<TypeDocumentPersonnel> getAll(){ 
		try {
			ArrayList<TypeDocumentPersonnel> tab = new ArrayList<TypeDocumentPersonnel>();
		String sql = "Select ID, Code, Nom_fr, Nom_ar from typedocumentpersonnel";
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(sql); 
		ResultSet rs = statement.executeQuery(); 
		while(rs.next()) { 
			TypeDocumentPersonnel doc = new TypeDocumentPersonnel();
				doc.setId(rs.getInt("ID"));
				doc.setCode(rs.getString("Code"));
				doc.setNom_Fr(rs.getString("Nom_Fr"));
				doc.setNom_Ar(rs.getString("Nom_Ar"));
				tab.add(doc);
			}
		return tab;
		}catch(Exception ex) {return null;}	
	}
	public void insert(TypeDocumentPersonnel doc) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("insert into typedocumentpersonnel (ID, Code, Nom_Fr, Nom_Ar) values (null, ?, ?, ?)");
		statement.setString(1, doc.getCode());
		statement.setString(2, doc.getNom_Fr());
		statement.setString(3, doc.getNom_Ar());
		statement.execute();
		statement.close();
	}
	public TypeDocumentPersonnel getById(int id) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("select ID, Code, Nom_Fr, Nom_Ar from typedocumentpersonnel where ID = ? ");
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		TypeDocumentPersonnel region = new TypeDocumentPersonnel();
		while (rs.next()) {
			region.setId(rs.getInt("ID"));
			region.setCode(rs.getString("Code"));
			region.setNom_Fr(rs.getString("Nom_Fr"));
			region.setNom_Ar(rs.getString("Nom_Ar"));
		}
		rs.close();
		statement.close();
		return region;		
	}
	public void update (TypeDocumentPersonnel doc) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("update typedocumentpersonnel set Code = ?, Nom_Fr = ?, Nom_Ar = ? where ID = ?");
		statement.setString(1, doc.getCode());
		statement.setString(2, doc.getNom_Fr());
		statement.setString(3, doc.getNom_Ar());
		statement.setInt(4,doc.getId());
		statement.execute();
	}
	public void delete(TypeDocumentPersonnel doc) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("delete from typedocumentpersonnel where ID = ?");
		statement.setInt(1, doc.getId());
		statement.execute();
		statement.close();
	}
	public static void main(String[] args) {
		TypeDocumentPersonnelDAO a = new TypeDocumentPersonnelDAO();
		System.out.println(a.getAll());
	}
	
}