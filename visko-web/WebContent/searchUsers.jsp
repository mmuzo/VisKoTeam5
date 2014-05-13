<%--This JSP will display the users --%>

<%@ page import ="java.sql.*" %></%@>
<%@ page import ="javax.sql.*" %></%@>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a><font size="4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Welcome!</p> <% //String user=session.getValue("email").toString(); out.print(user);  %></%>
      <form action="logout.jsp" method="post">
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
        <li><a href="privilegeduser.jsp">Home</a></li>
        <li><a href="searchPipeline.jsp">Search Pipelines</a></li>
        <li><a href="searchQueries.jsp">Search Queries</a></li>
		<li><a href="searchServices.jsp">Search Services</a></li>
		<li class="active"><a href="searchUsers.jsp">Search Users</a></li>
		<li><a href="#">Analyze</a>
          <ul>
            <li><a href="analyzePipeline.jsp">Analyze Pipelines</a></li>
            <li><a href="analyzeQuery.jsp">Analyze Queries</a></li>
            <li><a href="#">Analyze Services</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
<div class="wrapper col5">
  <div id="container">
    <div id="content" class="div66">
      <h1><font size="6px">User Search Criteria</font></h1>
	  <form action="?" method="post">
	  <label for='useremail'>User Email</label>
	  <br><input type="text" name="useremail" id="useremail" size="40">
	  <br><label for='email'>First Name</label>
	  <br><input type="text" name="firstname" id="firstname" size="40">
	  <br><label for='lastname'>Last Name</label>
	  <br><input type="text" name="lastname" id="lastname" size="40">
	  <br><label for='organization'>Organization/Affiliation</label>
	  <br><input type="text" name="organization" id="organization" size="40">
	  <br><input type="submit" name="search" value="Search">
	  <hr><br><h1><font size="6px">Results</font></h1>
	  <%
	  		Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14"); 
			
			String name=request.getParameter("firstname");
			%></%>
			<table border="2">
			<tr>
			<td>Name</td>
			<td>Email</td>
			</tr>
			<%
			if(name != null)
			{
			
				Statement st= con.createStatement(); 
				ResultSet rs=st.executeQuery("select * from Users"); 
				
				if(rs!=null)
				{
					out.println("Something");
				
					while(rs.next())
					{

						%></%>
    					<tr><td><%=rs.getString("Name")%></td>
    					<td><%=rs.getString("Email")%></td></tr>
        				<%

					}
						%></%>
    					</table>
    					<%
    					rs.close();
    					st.close();
    					con.close();
    			}
    			
    			else
    			{
    				out.println("Nothing!");
    			}
    		}
					
				
			
	  %></%>
    </form>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    <br class="clear" />
  </div>
</div></div>
</body>
</html>
