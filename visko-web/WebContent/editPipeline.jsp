<%--This JSP will display edit pipeline page --%>

<%@page import="java.util.*" %>
<%@page import="edu.utep.trustlab.visko.web.PipelineTeam5" %>


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
      <p>Welcome!</p>  <%-- <%String user=session.getValue("email").toString(); out.print(user);%> --%>
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
        <li><a href="#">Search History</a></li>
        <li><a href="visualize.jsp">Visualize</a></li>
		<li><a href="#">Manage Services</a></li>
		<li><a href="configureaccount.php">Configure Account</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
	
	<%
    	String ht=(String)request.getSession().getAttribute("htmlcode");
	%>
	
	<%=ht%>
	
	</div>
    </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    <p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>