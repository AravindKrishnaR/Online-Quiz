package com;

import java.sql.*;

import java.util.*;

import org.json.simple.*;

public class AdminDAO {
	
	public static String login(String username,String password){
		String query="select * from ADMIN where username=? and password=?";
		
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
		String query="update ADMIN set password=? where username=?";
		
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
	
	public static String removeStudent(String id){
		String query="delete from STUDENT where idStudent=?";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,id);
			
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
	
	public static String addStudent(String id, String name, String username, String password){
		String query="insert into STUDENT values (?, ?, ?, ?)";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,id);
			ps.setString(2,name);
			ps.setString(3,username);
			ps.setString(4,password);
			
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
	
	public static String removeTeacher(String id){
		String query="delete from TEACHER where idTeacher=?";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,id);
			
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
	
	public static String addTeacher(String id, String name, String username, String password){
		String query="insert into TEACHER values (?, ?, ?, ?)";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,id);
			ps.setString(2,name);
			ps.setString(3,username);
			ps.setString(4,password);
			
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
