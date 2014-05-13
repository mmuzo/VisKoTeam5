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
      <p>Welcome!</p> <%//String user=session.getValue("email").toString(); out.print(user);
      %></%>
      <form action="setQueryParameters.jsp" method="post">
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
        <li><a href="searchHistory.jsp">Search History</a></li>
        <li class="active"><a href="visualize.jsp">Visualize</a></li>
		<li><a href="selectOperation.jsp">Manage Services</a></li>
		<li><a href="configureaccount.jsp">Configure Account</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
  <div id="container">
    <div id="content">
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
        Viewer Set
        <br>
        
        <form action="setQueryParameters.jsp" method="post">
       	<select name="viewer_set_drop" width="400" style="width: 400px">
       	  <option value="default">-- Choose Set --</option>
       	  <option value="d3-viewer-set">d3-viewer-set</option>
  	      <option value="paraview">paraview</option>
          <option value="web-browser">web-browser</option>
        </select>
        <br>
        <br>
        
        Input Data Format 
        <br>
        <select name="input_data_format_drop" width="270" style="width: 400px">
        <option value="default">-- Choose Format --</option>
        <option value="CSV">CSV</option>
        <option value="FITS">FITS</option>
        <option value="GIF">GIF</option>
        <option value="HTML">HTML</option>
        <option value="JPEG">JPEG</option>
        <option value="JSON">JSON</option>
        <option value="LITTLE-ENDIAN-SEQUENCE">LITTLE-ENDIAN-SEQUENCE</option>
        <option value="NETCDF">NETCDF</option>
        <option value="PDF">PDF</option>
        <option value="PLAIN">PLAIN</option>
        <option value="PLAINTEXT">PLAINTEXT</option>
        <option value="PNG">PNG</option>
        <option value="POSTSCRIPT">POSTSCRIPT</option>
        <option value="RDFXML">RDFXML</option>
        <option value="SPACESEPARATEDVALUES">SPACESEPARATEDVALUES</option>
        <option value="SPARQLRESULTSXML">SPARQLRESULTSXML</option>
        <option value="TIFF">TIFF</option>
        <option value="XDMF">XDMF</option>
        <option value="XML">XML</option>

        </select>
        <br>
        <br>
        <br>
        
        Input Data Type
        <br>
        <select name="input_data_type_drop" width="270" style="width: 400px">
        <option value="default">-- Choose Type --</option>
        <option title="http://d3js.org/d3.owl#Graph" value="http://d3js.org/d3.owl#Graph">Graph</option>
        <option title="http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS" value="http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS">2D_Grid_COARDS</option>
        <option title="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon" value="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon">Variable_with_LatLon</option>
        <option title="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time" value="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time">Variable_with_Time</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths">VisKo_DataTransformationPaths</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary">VisKo_InstanceSummary</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase">VisKo_KnowledgeBase</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths">VisKo_OperatorPaths</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d18" value="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d18">XYZ Data</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d19" value="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d19">d19</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeWDO.owl#d4" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeWDO.owl#d4">d4</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeWDO.owl#d8" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeWDO.owl#d8">d8</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeWDO.owl#d2" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeWDO.owl#d2">d2</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#d7-0" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#d7-0">d7-0</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat">Array1DFloat</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger">Array1DInteger</option>
        <option title="http://www.vtk.org/vtk-data.owl#vtkImageData3D" value="http://www.vtk.org/vtk-data.owl#vtkImageData3D">vtkImageData3D</option>
        <option title="http://www.vtk.org/vtk-data.owl#vtkPolyData" value="http://www.vtk.org/vtk-data.owl#vtkPolyData">vtkPolyData</option>
        <option title="http://www.w3.org/2002/07/owl#Thing" value="http://www.w3.org/2002/07/owl#Thing">Thing</option>
        <option title="http://giovanni.gsfc.nasa.gov/giovanni-data.owl#BrightnessTemperature" value="http://giovanni.gsfc.nasa.gov/giovanni-data.owl#BrightnessTemperature">Brightness Temperature</option>
        
        </select>
        <br>
        <br>
        <br>
        
        Input URL
        <br>
        <input type="text" name="URLText" value="" style="width: 400px">
        <br>
        
        <input name="submit" type="submit" value="submit">
        </form>
        </div>
        
    
        
        <div class="div666"> 
        
        Viewer Sets refer to programs that present the abstractions onto the screen, such as visualization specic software like ParaView or more generic applications like a Web browser that can display images in standard formats.
        <br>
        <br>
        <br>
        <br>
        Input Data Format refers to the file encoding of you input dataset.
        <br>
        <br>
        <br>
        Input Data Type refers to the data structure represented by your input data format.
        <br>
        <br>
        <br>
        <br>
        Input Data URL refers to the location of your input data which is to be visualized.
        </div>
        
        <br>
        <br>
                
        <br>
        <br>


        
</div>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    
    <p class="fl_left">Copyright &copy; 2011 - All Rights Reserved - <a href="openvisko.org">VisKo</a></p>
    
    <%
      if(request.getParameter("submit")==null){
      	String Abstraction = request.getParameter("abs").toString();
      	session.putValue("abstype",Abstraction);
      	}
      if(request.getParameter("submit")!=null){
        String Abstract = session.getValue("abstype").toString();
        String ViewerSet = request.getParameter("viewer_set_drop");
        String InputFormat = request.getParameter("input_data_format_drop");
        String InputType = request.getParameter("input_data_type_drop");
        String URL =  request.getParameter("URLText");
        String In = null;
        String Vis = "VISUALIZE "+URL;
		String As= " AS http://openvisko.org/rdf/ontology/visko-view.owl#"+Abstract;
		
		if(ViewerSet.equals("d3-viewer-set")){
			In = " IN http://visko.cybershare.utep.edu:5080/visko-web/registry/module_d3.owl#"+ViewerSet;
	   }
	    else if(ViewerSet.equals("web-browser")){
	   		In = " IN http://visko.cybershare.utep.edu:5080/visko-web/registry/module_webbrowser.owl#"+ViewerSet;	
	   }
	    else{
	   		In = " IN http://visko.cybershare.utep.edu:5080/visko-web/registry/module_"+ViewerSet+".owl#"+ViewerSet;
	   }
		String Format = " WHERE FORMAT = http://openvisko.org/rdf/pml2/formats/"+InputFormat+".owl#"+InputFormat;
		String Type = " AND TYPE = "+InputType;  
        
        String Query = Vis+As+In+Format+Type; 
        out.print(Query);
        session.putValue("builtQuery", Query);
        String redirectURL = "visualize3.jsp";
    	response.sendRedirect(redirectURL);
	   }
      %></%>
    <br class="clear" />
  </div>
</div>
</body>
</html>
