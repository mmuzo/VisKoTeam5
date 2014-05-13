<%--This JSP will display analyze queries graph from the database --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%></%@>
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>VisKo: Open Source Visualization Knowledge</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout2.css" type="text/css" />

</head>
<%@ page import ="java.sql.*" %></%@>
<%@ page import ="javax.sql.*" %></%@>
<%
String name1 = "Syntax Error";
String name2 = "No Results";
String name3 = "Malformed URI";

String valueST  = "0";
String valueBID = "0";
String valueSE = "0";

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://earth.cs.utep.edu/cs4311team5sp14","cs4311team5sp14","cs4311!cs4311team5sp14"); 

Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from query_errors"); 

if(rs.next()) { 
	valueST  = rs.getString(1); 
	valueBID = rs.getString(2);
	valueSE  = rs.getString(3);
} 

%></%>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
      //var name1 = "<%=name1%>";
      var v1 = Math.floor("<%=valueST%>");
      var v2 = Math.floor("<%=valueBID%>");
      var v3 = Math.floor("<%=valueSE%>");
      
        var data = google.visualization.arrayToDataTable([
          ['Type', 'Quantity'],
          ["<%=name1%>",  v1],
          ['<%=name2%>',  v2],
          ['<%=name3%>',  v3]
        ]);

        var options = {
          title: 'Query Statistics',
          hAxis: {title: 'Type', titleTextStyle: {color: 'Bue'}}
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('div111'));
        chart.draw(data, options);
      }
    </script>

<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a>
      <font size="4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Welcome!</p>
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
        <li><a href="privilegeduser.jsp">Home</a></li>
        <li><a href="searchPipeline.jsp">Search Pipelines</a></li>
        <li><a href="searchQueries.jsp">Search Queries</a></li>
		<li><a href="searchServices.jsp">Search Services</a></li>
		<li><a href="searchUsers.jsp">Search Users</a></li>
		<li class="active"><a href="#">Analyze</a>
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
  <div id="container">
    <div id="content">
        <h1>Results</h1> 
        <div id="div111" style="width: 900px; height: 500px;"></div>
</div>
    </div>
    <br class="clear" />
  </div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    <p class="fl_right"></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>