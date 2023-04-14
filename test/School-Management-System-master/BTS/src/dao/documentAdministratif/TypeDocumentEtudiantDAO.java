package dao.documentAdministratif;
import Domaine.documentAdministratif.*;

import com.mysql.jdbc.Connection;
import java.sql.*;
import java.util.*;
import dao.database.Db;
import com.mysql.jdbc.PreparedStatement;


public class TypeDocumentEtudiantDAO {
	private Connection con;
	public TypeDocumentEtudiantDAO() {
		this.con = Db.getInstance().con;
	}
	public ArrayList<TypeDocumentEtudiant> getAll(){ 
		try {
			ArrayList<TypeDocumentEtudiant> tab = new ArrayList<TypeDocumentEtudiant>();
		String sql = "Select ID, Code, Nom_fr, Nom_ar from typedocumentetudiant";
		PreparedStatement statement = (PreparedStatement) con.prepareStatement(sql); 
		ResultSet rs = statement.executeQuery(); 
		while(rs.next()) { 
			TypeDocumentEtudiant doc = new TypeDocumentEtudiant();
			doc.setId(rs.getInt("ID"));
			doc.setCode(rs.getString("Code"));
			doc.setNom_Fr(rs.getString("Nom_Fr"));
			doc.setNom_Ar(rs.getString("Nom_Ar"));
			tab.add(doc);
		}
		return tab;
		}catch(Exception ex) {
			return null;
		}
		
	}
	public void insert(TypeDocumentEtudiant doc) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("insert into typedocumentetudiant (ID, Code, Nom_Fr, Nom_Ar) values (null, ?, ?, ?)");
		statement.setString(1, doc.getCode());
		statement.setString(2, doc.getNom_Fr());
		statement.setString(3, doc.getNom_Ar());
		statement.execute();
		statement.close();
	}
	public TypeDocumentEtudiant getById(int id) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("select ID, Code, Nom_Fr, Nom_Ar from typedocumentetudiant where ID = ? ");
		statement.setInt(1, id);
		ResultSet rs = statement.executeQuery();
		TypeDocumentEtudiant region = new TypeDocumentEtudiant();
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
	public void update (TypeDocumentEtudiant doc) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("update typedocumentetudiant set Code = ?, Nom_Fr = ?, Nom_Ar = ? where ID = ?");
		statement.setString(1, doc.getCode());
		statement.setString(2, doc.getNom_Fr());
		statement.setString(3, doc.getNom_Ar());
		statement.setInt(4,doc.getId());
		statement.execute();
	}
	public void delete(TypeDocumentEtudiant doc) throws SQLException{
		PreparedStatement statement = (PreparedStatement) con.prepareStatement("delete from typedocumentetudiant where ID = ?");
		statement.setInt(1, doc.getId());
		statement.execute();
		statement.close();
	}
		public static void main(String[] args) {
			TypeDocumentEtudiantDAO a = new TypeDocumentEtudiantDAO();
			 
				System.out.println(a.getAll());
			}
			
	
	}

