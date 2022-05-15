package db;

import java.sql.*;

public class DBConnect {
	
	private static Connection con;

	public static Connection getDB() throws ClassNotFoundException, SQLException {

		if (con == null || con.isClosed()) {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3307/unit", "root", "");
		}
		
		return con;
	}

}
