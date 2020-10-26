package com;

import java.sql.*;

import java.util.*;

import org.json.simple.*;

public class StudentDAO {
	
	public static String login(String username,String password){
		String query="select * from STUDENT where username=? and password=?";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,username);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				return "true";
			}
			
			ps.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "false";
	}
	
	public static String changePassword(String username, String password){
		String query="update STUDENT set password=? where username=?";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,password);
			ps.setString(2,username);
			
			int rs=ps.executeUpdate();
			
			if(rs==1){
				return "true";
			}
			
			ps.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "false";
	}
}
