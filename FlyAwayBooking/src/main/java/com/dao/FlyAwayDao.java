package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.controller.StringUtil;


public class FlyAwayDao {
	public Connection con=null;
	public Statement st=null;

	public FlyAwayDao() throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","Stokstad22!");
		System.out.println("Connection to database.");
		st = con.createStatement();
	}
	public List<String[]> getAvailableFlights(String f, String t, String a) {
		
		List<String[]> flights=new ArrayList<>();
		String query= "SELECT * FROM flyaway.flights where `from`='"+f+"' and `to`='"+t+"' and `airline`='"+a+"'";
		try {
			ResultSet rs=st.executeQuery(query);
			
			if(rs.next()) {
				String[] flight=new String[6];
				flight[0]=rs.getString("airline");
				flight[1]=rs.getString("from");
				flight[2]=rs.getString("to");
				flight[3]=rs.getString("date");
				flight[4]=rs.getString("time");
				flight[5]=rs.getString("price");
				flights.add(flight);
				return flights;
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}

public HashMap<String, String> checkUser(String email, String password) {
	
	HashMap<String,String> user=null;
	String query="select * from user where email='"+email+"' and password='"+password+"'";
	try {
		ResultSet rs=st.executeQuery(query);
		if(rs.next()) {
			user=new HashMap<>();
			user.put("name", rs.getString("name"));
			user.put("email",rs.getString("email"));
		}
		return user;
	} catch (SQLException e) {
		e.printStackTrace();
	}

	return user;
}

public boolean insertUser(HashMap<String, String> user) {

	String query="INSERT INTO passenger (name, email, password, phone) values('"+user.get("name")+"','"+user.get("email")+"','"+user.get("password")+"','"+user.get("phone")+")";                   
	
	try {
		st.execute(query);
		return true;
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return false;
}

public boolean checkIdentity(String email, String password) {
	
	try {
		ResultSet rs=st.executeQuery("select * from login where email='"+email+"' and password='"+password+"'");
		if(rs.next())
			return true;
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return false;
}

public boolean changePassword(String email, String password) {

	try {
		ResultSet rs=st.executeQuery("select * from login where email='"+email+"'");
		if(!rs.next()) {
			return false;
		}
		st.execute("update login set password='"+password+"' where email='"+email+"'");
		return true;
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return false;

}
}
