<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
      <p>Welcome!</p> <% String user=session.getValue("email").toString(); out.print(user); %>
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
        <li><a href="/visko/RegularUser/regularuser.jsp">Home</a></li>
        <li><a href="/visko/RegularUser/SearchHistory/searchHistory.jsp">Search History</a></li>
        <li><a href="/visko/RegularUser/Visualize/visualize.jsp">Visualize</a></li>
		<li class="active"><a href="/visko/RegularUser/ManageServices/selectOperation.jsp">Manage Services</a></li>
		<li><a href="/visko/RegularUser/configureAccount/configureaccount.jsp">Configure Account</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
        <h1>Results</h1> 
        
        Service Type
        <br>
        <select id="source_type_drop" width="600" style="width: 400px">
        </select>
        <br>
        <br>
        <button type="button">Add</button>
        <br>
        <br>
        <br>
        <h1>Edit/Delete Service</h1> 
        
        <form action="">
            Viewer Sets
            <br>
            <input type="radio" name="Viewer Sets" value="Viewer Sets">
            <select id="Viewers Sets" width="600" style="width: 400px">
            </select>
            <br>
            <br>
            
            Viewers 
            <br>
            <input type="radio" name="Viewers" value="Viewers">
            <select id="Viewers" width="600" style="width: 400px">
            </select>
            <br>
            <br>
            
            Filters
            <br>
            <input type="radio" name="Filters" value="Filters">
            <select id="Filters" width="600" style="width: 400px">
            </select>
            <br>
            <br>
            
            Transformers 
            <br>
            <input type="radio" name="Transformers" value="Transformers">
            <select id="Transformers" width="600" style="width: 400px">
            </select>
            <br>
            <br>
            
            Converters 
            <br>
            <input type="radio" name="Converters" value="Converters">
            <select id="Converters" width="600" style="width: 400px">
            </select>
            <br>
            <br>
            
            Mappers 
            <br>
            <input type="radio" name="Mappers" value="Mappers">
            <select id="Mappers" width="600" style="width: 400px">
            </select>
            <br>
            <br>
            
            <button type="button">Edit</button>
            <button type="button">Delete</button>
            
            <br>
            <br>
        
        </form>

</div>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    <br class="clear" />
  </div>
</div>
</body>
</html>
