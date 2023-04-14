package domaine;

import java.sql.*;
import Utility.DBConnection;

public class connecter0 {
	
	public boolean connecter(String N,String pwd ) throws Exception{
		boolean test = false;
		String req="select* from authentification where nom=? and pwd=?  ";
		PreparedStatement ps= DBConnection.getConnection().prepareStatement(req);
		ps.setString(1,N);
		ps.setString(2,pwd);
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			test = true;
		}
		return test;
	}
}
