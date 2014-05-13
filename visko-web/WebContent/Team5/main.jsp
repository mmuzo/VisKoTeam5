<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>VisKo: Open Source Visualization Knowledge</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a><font size="4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Log in to VisKo</p>
      <form action="config.jsp" method="POST">
        <fieldset>
          <legend>Login</legend>
          <input type="text" name="email" value="email"  id="email"/>
          <input type="password" value="password" name="password" id="password" />
          <input type="submit" name="login" id="login" value="Log In" />
	  <input type="submit" name="register" id="register" value="Register" style="float: right;"/>
        </fieldset>
      </form>
    </div>
    <br class="clear" />
  </div>
</div>
    <br class="clear" />
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
    <br class="clear" />
  </div>
</div>
</body>
</html>