<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html><head><title><template:get name='Visualize'/></title></head>
<body>

<br>Visualize Code here

<%@ page import ="java.sql.*" %></%@>
<%@ page import ="javax.sql.*" %></%@>
<%
String userid=request.getParameter("email"); 
session.putValue("email",userid); 
String pw=request.getParameter("password");  

String register=request.getParameter("register");

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Visko","root",""); 

Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from Users where Email='"+userid+"'"); 

if(rs.next()) 
{ 
	//Is priv.
	if(rs.getString(3).equals(pw) && userid.equals("test2@test.com")) 
	{ 
		<jsp:forward page="privilegeduser.jsp" />
	<%
	} 
	
	//Is regular user
	else if(rs.getString(3).equals(pw)) 
	{ 
	%>
	
		<jsp:forward page="regularuser.jsp" />
	<%
	}
	
	else 
	{ 
		out.println("Invalid password try again"); 
	} 
} 

else if(register!=null)
{
	%>
	
		<jsp:forward page="registration.jsp" />
	<%
}

else 
{
	out.println("Invalid username"); 
}
%>
</%>
</%>
</%>
</body>
</html>
