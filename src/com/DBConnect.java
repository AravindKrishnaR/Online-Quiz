package com;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	static String DATABASE_URL="jdbc:mysql://localhost:3306/onlinequiz";
	static String USERNAME="root";
	static String PASSWORD="password";
	
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(DATABASE_URL,USERNAME,PASSWORD);
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
}