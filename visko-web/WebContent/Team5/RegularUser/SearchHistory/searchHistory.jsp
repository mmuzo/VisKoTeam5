<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%></%@>
    
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
        <li><a href="/visko/RegularUser/regularuser.jsp">Home</a></li>
        <li class="active"><a href="/visko/RegularUser/SearchHistory/searchHistory.jsp">Search History</a></li>
        <li><a href="/visko/RegularUser/Visualize/visualize.jsp">Visualize</a></li>
		<li><a href="/visko/RegularUser/ManageServices/selectOperation.jsp">Manage Services</a></li>
		<li><a href="/visko/RegularUser/configureAccount/configureaccount.jsp">Configure Account</a></li>
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


        <button type="button">Fuck You!</button>
        ____________________________________________________________________________________________________________________________
        <br>
        <br>
        <h1>Results</h1> 
        
        <table border="1" style="width:300px">
            <tr>
            <td><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /> </td>
            <td> </td>		
            <td> </td>
            </tr>    
            <tr>
            <td> </td>
            <td> </td>		
            <td> </td>
            </tr>
            <tr>
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
    <br class="clear" />
  </div>
</div>
</body>
</html>
