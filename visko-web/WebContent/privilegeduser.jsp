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
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a>
      <font size="4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Welcome!</p><% String user=session.getValue("email").toString(); out.print(user); %>
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
        <li class="active"><a href="privilegeduser.jsp">Home</a></li>
        <li><a href="searchPipeline.jsp">Search Pipelines</a></li>
        <li><a href="searchQueries.jsp">Search Queries</a></li>
		<li><a href="searchServices.jsp">Search Services</a></li>
		<li><a href="searchUsers.jsp">Search Users</a></li>
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
    <div id="content">
      <h1><font size="6px">What is VisKo?</font></h1>
      <font size="3px"><p>VisKo is a framework supporting the answering of visualization queries that allow users to specify what visualization they want generated rather than specifying how they should be generated.</p></font>
	  <br><h1><font size="6px">What are the benefits?</font></h1>
	  <font size="3px"><p>VisKo can automatically figure out how to generate a wide variety of visualizations. Below is a variety of different visualizations generated from a single gravity dataset that resulted from the execution of a single VisKo query.</p></font>
	  <br>
	  <img src='http://i59.tinypic.com/au8kzn.png' border='1' alt="graphs" />

    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    
  </div>
</div>
</div>
</body>
</html>
