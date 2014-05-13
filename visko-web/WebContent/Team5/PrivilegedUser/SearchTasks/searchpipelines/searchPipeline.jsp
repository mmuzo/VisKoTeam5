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
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a><font size="4px">VisKo: Open Source Visualization Knowledge</font>
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
        <li class="active"><a href="/visko/privilegeduser/privilegeduser.jsp">Home</a></li>
        <li><a href="/visko/privilegeduser/searchtasks/searchpipelines/searchPipeline.jsp">Search Pipelines</a></li>
        <li><a href="/visko/privilegeduser/searchtasks/searchqueries/searchQueries.jsp">Search Queries</a></li>
		<li><a href="/visko/privilegeduser/searchtasks/searchservices/searchServices.jsp">Search Services</a></li>
		<li><a href="/visko/privilegeduser/searchtasks/searchusers/searchUsers.jsp">Search Users</a></li>
      <li><a href="#">Analyze</a>
          <ul>
            <li><a href="#">Analyze Pipelines</a></li>
            <li><a href="#">Analyze Queries</a></li>
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
          .divInL { 
              width: 50%; 
              height:250px;  
              float:left;
          } 
          .divInR { 
              width: 50%; 
              height:250px; 
              float:left; 
          }
          
      </style> 
    <div id="content">
        <div class="div66"> 
        Abstraction
        <br>
        <select id="abstraction_drop" width="400" style="width: 450px">
        </select>
        <br>
        <br>
        
        Input Url 
        <br>
        <select id="input_Url_drop" width="270" style="width: 450px">
        </select>
        <br>
        <br>
        
        Viewer Set
        <br>
        <select id="viewer_set_drop" width="270" style="width: 450px">
        </select>
        <br>
        <br>
        <div class="divInL">
        Source Format
        <br>
        <select id="source_format_drop" width="270" style="width: 200px">
        </select>
        <br>
        <br>
            
        Source Type
        <br>
        <select id="source_type_drop" width="270" style="width: 200px">
        </select>
        <br>
        <br>    
        </div>
            
        <div class="divInR">
        Target Format
        <br>
        <select id="target_format_drop" width="270" style="width: 200px">
        </select>
        <br>
        <br>
        
        Target Type
        <br>
        <select id="target_type_drop" width="270" style="width: 200px">
        </select>
        <br>
        <br>
            
            
            </div>
        </div>
        
        <div class="div666"> 
        Error
        <br>
        <select id="error_drop" width="270" style="width: 200px">
        </select>
        <br>
        <br>
            
        </div>
        
        <br>
        <br>
                
        <br>
        <br>


        <button type="button">Fuck You!</button>
        ____________________________________________________________________________________________________________________________
        <br>
        <br>
        <h1>Results</h1> 
        
        <table border="1" style="width:100%">
            <tr>
            <td><font color="black">ID</font></td>
            <td><font color="black">Submitted by User</font></td>		
            <td><font color="black">Data Executed</font></td>
            <td><font color="black">Error</font></td>
            <td><font color="black">Result</font></td>
            </tr>    
            <tr>
            <td> </td>
            <td> </td>		
            <td> </td>
            <td> </td>		
            <td> </td>
            </tr>
            <tr>
            <td> </td>
            <td> </td>		
            <td> </td>
            <td> </td>		
            <td> </td>
            </tr>
            </table>
</div>
    </div>
    <br class="clear" />
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
