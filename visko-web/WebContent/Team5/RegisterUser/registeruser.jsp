<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html><head><title><template:get name='Visualize'/></title></head>
<body>

<br>Visualize Code here </br>

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String firstname=request.getParameter("firstname"); 
String email=request.getParameter("email"); 
String email_confirm=request.getParameter("confirmemail"); 

String pw=request.getParameter("password");  
String pw_confirm=request.getParameter("confirm");  


Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Visko","root",""); 

Statement st= con.createStatement(); 
ResultSet rs; 


if((email.equals(email_confirm)) && pw.equals(pw_confirm))
{

	int i=st.executeUpdate("insert into Users values ('"+firstname+"','"+email+"','"+pw+"')");

	if(i > 0)
	{
		%>
	
			<jsp:forward page="regularuser.jsp" />
		<%
	}
	
	else
	{
		out.println("Error with query");	
	}
}

else
{
	out.println("Password/Email does not match");
}

%>


</body>
</html>