<%-- Display history JSP --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%></%@>
    
 <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>   
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>VisKo: Open Source Visualization Knowledge</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout2.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a><font size=
"4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Welcome!</p> <% String user=session.getValue("email").toString(); out.print(user); %></%>
      <form action="logout.php" method="post">
        <fieldset>
          <input type="submit" name="logout" id="logout" value="Logout" style="float:right" />
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="regularuser.jsp">Home</a></li>
        <li class="active"><a href="searchHistory.jsp">Search History</a></li>
        <li><a href="visualize.jsp">Visualize</a></li>
		<li><a href="selectOperation.jsp">Manage Services</a></li>
		<li><a href="configureaccount.jsp">Configure Account</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
      <style type="text/css">  
          .div66 { 
              width: 50%; 
              height:250px;  
              float:left;
          } 
          .div666 { 
              width: 50%; 
              height:250px; 
              float:left; 
          }
          
      </style> 
    <div id="content">
        <div class="div66"> 
        Abstraction
        <br>
        <form method= "POST">

        <select id="abstraction_drop" width="400" style="width: 400px">
        </select>
        <br>
        <br>
        
        Input Url 
        <br>
        <select id="input_Url_drop" width="270" style="width: 400px">
        </select>
        <br>
        <br>
        
        Viewer Set
        <br>
        <select id="viewer_set_drop" width="270" style="width: 400px">
        </select>
        <br>
        <br>
            
        Source Format
        <br>
        <select id="source_format_drop" width="270" style="width: 400px">
        </select>
        <br>
        <br>
            
        Source Type
        <br>
        <select id="source_type_drop" width="270" style="width: 400px">
        </select>
        <br>
        <br>    
        
        </div>
        
        <div class="div666"> 
        Target Format
        <br>
        <select id="target_format_drop" width="270" style="width: 400px">
        </select>
        <br>
        <br>
        
        Target Type
        <br>
        <select id="target_type_drop" width="270" style="width: 400px">
        </select>
        <br>
        <br>
            
        </div>
        
        <br>
        <br>
                
        <br>
        <br>


        <input type="submit" name="submit" value ="submit">
        </form>
__________________________________________________________________________________________________________________________
       <br>
        <br>
        <h1>Results</h1> <%

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14"); 

if(request.getParameter("submit") != null){
String abstraction = request.getParameter("abstraction_drop");
String target_format = request.getParameter("target_format_drop");
String target_type   = request.getParameter("target_type_drop");
String error         = request.getParameter("error_drop");
String viewer        = request.getParameter("viewer_set_drop");
            //out.println(abstraction);
            // String q = "SELECT * FROM user_queries WHERE abstraction='"+abstraction+"'AND viewer_set ='"+viewer+"' AND target_format ='"+target_format+"' AND target_type='"+target_type+"'";
			// String q = "SELECT * FROM user_queries WHERE abstraction='"+abstraction+"'OR viewer_set ='"+viewer+"' OR target_format ='"+target_format+"' OR target_type='"+target_type+"'";
			 String q = "SELECT * FROM user_queries WHERE Email='"+user+"'" ;

           Statement st= con.createStatement();
        	ResultSet rs = st.executeQuery(q);
            
			
			while(rs.next()){
			
            %>
        
        <table border="1" style="width:100%">
            <tr>
            <th><font color="black">Submitted by User</font></th>		
            <th><font color="black">Query</font></th>
            <th><font color="black">Date</font></th>
            <th><font color="black">Error</font></th>
            </tr>    
            <tr>
            <td><font color="black"><%= rs.getString(1) %></font> </td>
            <td><font color="black"><%= rs.getString(2) %></font></td>	
            <td><font color="black"><%= rs.getString(3) %></font>/td>		
            <td><font color="black"><%= rs.getString(4) %></font></td>				
            </tr>
            </table>
            <%
            }
            }
            %>
</div>
    </div>
    <br class="clear" />
  </div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>
