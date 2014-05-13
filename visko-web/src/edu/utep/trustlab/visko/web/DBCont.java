package edu.utep.trustlab.visko.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


/*
 * This class is the Database Controller that saves into the Database as well as pulls information. 
 */
public class DBCont {
	
	public void updatePipelineCount()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Connection con2=null;
		try {
			 con2 = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Statement st2 = null;
		try {
			st2=con2.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			st2.executeUpdate("UPDATE pipelines SET number_of_pipelines = number_of_pipelines + 1");
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ResultSet HistoryQueries(String useremail,String filterType,String filterValue)
	{
		ResultSet values=null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Connection con2=null;
		try {
			 con2 = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Statement st2 = null;
		try {
			st2=con2.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			
			String input="'"+ useremail +", and " + filterType + "= " + "'"+filterValue+",)";
			values=st2.executeQuery("Select * from user_queries Where (email="+input);
			
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return values;
	}
	
	public void saveQuery(String useremail,String q,String[] qParams)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Connection con2=null;
		try {
			 con2 = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String reportDate = df.format(date);

		String values2="'"+useremail+"','" + q +"','" + reportDate +"','NONE','"+qParams[0]+"','"+qParams[3]+"','"+qParams[2]+"','"+qParams[4]+"','"+qParams[5]+"'";
		
		
		Statement st2 = null;
		try {
			st2=con2.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try 
		{
			st2.executeUpdate("INSERT INTO user_queries (Email,query,date,error_type,abstraction,url,viewer_set,target_format,target_type) VALUES ("+values2+")");
			st2.close();
			con2.close();		
		} 
		
		catch (SQLException e) 
		{
			
		}
	}
	
	public void saveInvalidQuery(String useremail,String q)
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		java.sql.Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

		Statement st = null;
		try {
			st = con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		try {
			
			st.executeUpdate("UPDATE query_errors SET syntax_error = syntax_error + 1");
			
			DateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			Date date = new Date();
			String reportDate2 = df.format(date);
			
			String values="'"+useremail+"','" + q +"','" + reportDate2 +"','Syntax'";
			
			st.executeUpdate("INSERT INTO user_queries (Email,query,date,error_type) VALUES ("+values+")");
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			
		} 
	}


}
