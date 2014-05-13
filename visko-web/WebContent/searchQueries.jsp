<%--This JSP will display queries in a database --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%></%@>
    
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>VisKo: Open Source Visualization Knowledge</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout2.css" type="text/css" />


<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a><font size="4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Welcome!</p> <% //String user=session.getValue("email").toString(); out.print(user); %></%>
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
        <li class="active"><a href="searchQueries.jsp">Search Queries</a></li>
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
        
        <h1>Query Search Criteria</h1>
        <div class="div66"> 
        Abstraction
        <br>
         <form method= "POST">
        <select name="abstraction_drop" width="400" style="width: 450px">
        <option value="">--</option>
          <option value="timeline">1D_Timeline</option>
  	      <option value="2D_Contour_Map">2D_Contour_Map</option>
          <option value="forcegraph">2D_Force_Graph</option>
          <option value="pointmap">2D_Point_Map</option>
  	      <option value="Raster Map">2D_Raster_Map</option>
          <option value="Species Distribution Map">2D_Species_Distribution_Map</option>
          <option value="Spherized Raster">2D_Spherized_Raster</option>
          <option value="Time Series Plot">2D_Time_Series_Plot</option>
  	      <option value="VisKo Data Transformations Force Graph">2D_VisKo_Data_Transformations_Force_Graph</option>
          <option value="VisKo Instances Bar Chart">2D_VisKo_Instances_Bar_Chart</option>
          <option value="Visko Operator Paths Force Graph">2D_Visko_Operator_Paths_Force_Graph</option>
  	      <option value="Bar Chart">3D_Bar_Chart</option>
          <option value="Iso Surfaces Rendering">3D_Iso_Surfaces_Rendering</option>
          <option value="Mesh Plot">3D_Mesh_Plot</option>
          <option value="Molecular Structure">3D_Molecular_Structure</option>
          <option value="Molecular Structure Cartoon">3D_Molecular_Structure_Cartoon</option>
          <option value="Point Plot">3D_Point_Plot</option>
          <option value="Raster Cube">3D_Raster_Cube</option>
          <option value="Surface Plot">3D_Surface_Plot</option>
          <option value="Volume Rendering">3D_Volume_Rendering</option>
          <option value="Molecular Structure">3D_Molecular_Structure</option>
          <option value="Molecular Structure Cartoon">3D_Molecular_Structure_Cartoon</option>
          <option value="Point Plot">3D_Point_Plot</option>
        </select>
        <br>
        <br>
        
        Input Url 
        <br>
        <select name="input_Url_drop" width="270" style="width: 450px">
        </select>
        <br>
        <br>
        
        Viewer Set
        <br>
        <select name="viewer_set_drop" width="270" style="width: 450px">
          <option value="d3-viewer-set">d3-viewer-set</option>
  	      <option value="paraview">paraview</option>
          <option value="web-browser">web-browser</option>
        </select>
        <br>
        <br>
        <div class="divInL">
        Source Format
        <br>
        <select name="source_format_drop" width="270" style="width: 200px">
        <option value="default">-- Choose Format --</option>
        <option title="http://openvisko.org/rdf/pml2/formats/CSV.owl#CSV" value="http://openvisko.org/rdf/pml2/formats/CSV.owl#CSV">CSV</option>
        <option title="http://openvisko.org/rdf/pml2/formats/FITS.owl#FITS" value="http://openvisko.org/rdf/pml2/formats/FITS.owl#FITS">FITS</option>
        <option title="http://openvisko.org/rdf/pml2/formats/GIF.owl#GIF" value="http://openvisko.org/rdf/pml2/formats/GIF.owl#GIF">GIF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/HTML.owl#HTML" value="http://openvisko.org/rdf/pml2/formats/HTML.owl#HTML">HTML</option>
        <option title="http://openvisko.org/rdf/pml2/formats/JPEG.owl#JPEG" value="http://openvisko.org/rdf/pml2/formats/JPEG.owl#JPEG">JPEG</option>
        <option title="http://openvisko.org/rdf/pml2/formats/JSON.owl#JSON" value="http://openvisko.org/rdf/pml2/formats/JSON.owl#JSON">JSON</option>
        <option title="http://openvisko.org/rdf/pml2/formats/LITTLE-ENDIAN-SEQUENCE.owl#LITTLE-ENDIAN-SEQUENCE" value="http://openvisko.org/rdf/pml2/formats/LITTLE-ENDIAN-SEQUENCE.owl#LITTLE-ENDIAN-SEQUENCE">LITTLE-ENDIAN-SEQUENCE</option>
        <option title="http://openvisko.org/rdf/pml2/formats/NETCDF.owl#NETCDF" value="http://openvisko.org/rdf/pml2/formats/NETCDF.owl#NETCDF">NETCDF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PDF.owl#PDF" value="PDF">PDF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PLAIN.owl#PLAIN" value="http://openvisko.org/rdf/pml2/formats/PLAIN.owl#PLAIN">PLAIN</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PLAINTEXT.owl#PLAINTEXT" value="http://openvisko.org/rdf/pml2/formats/PLAINTEXT.owl#PLAINTEXT">PLAINTEXT</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PNG.owl#PNG" value="http://openvisko.org/rdf/pml2/formats/PNG.owl#PNG">PNG</option>
        <option title="http://openvisko.org/rdf/pml2/formats/POSTSCRIPT.owl#POSTSCRIPT" value="http://openvisko.org/rdf/pml2/formats/POSTSCRIPT.owl#POSTSCRIPT">POSTSCRIPT</option>
        <option title="http://openvisko.org/rdf/pml2/formats/RDFXML.owl#RDFXML" value="http://openvisko.org/rdf/pml2/formats/RDFXML.owl#RDFXML">RDFXML</option>
        <option title="http://openvisko.org/rdf/pml2/formats/SPACESEPARATEDVALUES.owl#SPACESEPARATEDVALUES" value="http://openvisko.org/rdf/pml2/formats/SPACESEPARATEDVALUES.owl#SPACESEPARATEDVALUES">SPACESEPARATEDVALUES</option>
        <option title="http://openvisko.org/rdf/pml2/formats/SPARQLRESULTSXML.owl#SPARQLRESULTSXML" value="http://openvisko.org/rdf/pml2/formats/SPARQLRESULTSXML.owl#SPARQLRESULTSXML">SPARQLRESULTSXML</option>
        <option title="http://openvisko.org/rdf/pml2/formats/TIFF.owl#TIFF" value="http://openvisko.org/rdf/pml2/formats/TIFF.owl#TIFF">TIFF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/XDMF.owl#XDMF" value="http://openvisko.org/rdf/pml2/formats/XDMF.owl#XDMF">XDMF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/XML.owl#XML" value="http://openvisko.org/rdf/pml2/formats/XML.owl#XML">XML</option>
        </select>
        <br>
        <br>
            
        Source Type
        <br>
        <select name="source_type_drop" width="270" style="width: 200px">
        <option value="default">-- Choose Type --</option>
        <option title="http://d3js.org/d3.owl#Graph" value="http://d3js.org/d3.owl#Graph">http://d3js.org/d3.owl#Graph</option>
        <option title="http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS" value="http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS">http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS</option>
        <option title="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon" value="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon">http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon</option>
        <option title="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time" value="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time">http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths">http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary">http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase">http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths">http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d18" value="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d18">XYZ Data</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat">http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger">http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger</option>
        <option title="http://www.vtk.org/vtk-data.owl#vtkImageData3D" value="http://www.vtk.org/vtk-data.owl#vtkImageData3D">http://www.vtk.org/vtk-data.owl#vtkImageData3D</option>
        <option title="http://www.vtk.org/vtk-data.owl#vtkPolyData" value="http://www.vtk.org/vtk-data.owl#vtkPolyData">http://www.vtk.org/vtk-data.owl#vtkPolyData</option>
        <option title="http://www.w3.org/2002/07/owl#Thing" value="http://www.w3.org/2002/07/owl#Thing">http://www.w3.org/2002/07/owl#Thing</option>
        </select>
        <br>
        <br>    
        </div>
            
        <div class="divInR">
        Target Format
        <br>
        <select name="target_format_drop" width="270" style="width: 200px">
        <option value="">--</option>
        <option title="http://openvisko.org/rdf/pml2/formats/CSV.owl#CSV" value="http://openvisko.org/rdf/pml2/formats/CSV.owl#CSV">CSV</option>
        <option title="http://openvisko.org/rdf/pml2/formats/FITS.owl#FITS" value="http://openvisko.org/rdf/pml2/formats/FITS.owl#FITS">FITS</option>
        <option title="http://openvisko.org/rdf/pml2/formats/GIF.owl#GIF" value="http://openvisko.org/rdf/pml2/formats/GIF.owl#GIF">GIF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/HTML.owl#HTML" value="http://openvisko.org/rdf/pml2/formats/HTML.owl#HTML">HTML</option>
        <option title="http://openvisko.org/rdf/pml2/formats/JPEG.owl#JPEG" value="http://openvisko.org/rdf/pml2/formats/JPEG.owl#JPEG">JPEG</option>
        <option title="http://openvisko.org/rdf/pml2/formats/JSON.owl#JSON" value="http://openvisko.org/rdf/pml2/formats/JSON.owl#JSON">JSON</option>
        <option title="http://openvisko.org/rdf/pml2/formats/LITTLE-ENDIAN-SEQUENCE.owl#LITTLE-ENDIAN-SEQUENCE" value="http://openvisko.org/rdf/pml2/formats/LITTLE-ENDIAN-SEQUENCE.owl#LITTLE-ENDIAN-SEQUENCE">LITTLE-ENDIAN-SEQUENCE</option>
        <option title="http://openvisko.org/rdf/pml2/formats/NETCDF.owl#NETCDF" value="http://openvisko.org/rdf/pml2/formats/NETCDF.owl#NETCDF">NETCDF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PDF.owl#PDF" value="PDF">PDF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PLAIN.owl#PLAIN" value="http://openvisko.org/rdf/pml2/formats/PLAIN.owl#PLAIN">PLAIN</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PLAINTEXT.owl#PLAINTEXT" value="http://openvisko.org/rdf/pml2/formats/PLAINTEXT.owl#PLAINTEXT">PLAINTEXT</option>
        <option title="http://openvisko.org/rdf/pml2/formats/PNG.owl#PNG" value="http://openvisko.org/rdf/pml2/formats/PNG.owl#PNG">PNG</option>
        <option title="http://openvisko.org/rdf/pml2/formats/POSTSCRIPT.owl#POSTSCRIPT" value="http://openvisko.org/rdf/pml2/formats/POSTSCRIPT.owl#POSTSCRIPT">POSTSCRIPT</option>
        <option title="http://openvisko.org/rdf/pml2/formats/RDFXML.owl#RDFXML" value="http://openvisko.org/rdf/pml2/formats/RDFXML.owl#RDFXML">RDFXML</option>
        <option title="http://openvisko.org/rdf/pml2/formats/SPACESEPARATEDVALUES.owl#SPACESEPARATEDVALUES" value="http://openvisko.org/rdf/pml2/formats/SPACESEPARATEDVALUES.owl#SPACESEPARATEDVALUES">SPACESEPARATEDVALUES</option>
        <option title="http://openvisko.org/rdf/pml2/formats/SPARQLRESULTSXML.owl#SPARQLRESULTSXML" value="http://openvisko.org/rdf/pml2/formats/SPARQLRESULTSXML.owl#SPARQLRESULTSXML">SPARQLRESULTSXML</option>
        <option title="http://openvisko.org/rdf/pml2/formats/TIFF.owl#TIFF" value="http://openvisko.org/rdf/pml2/formats/TIFF.owl#TIFF">TIFF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/XDMF.owl#XDMF" value="http://openvisko.org/rdf/pml2/formats/XDMF.owl#XDMF">XDMF</option>
        <option title="http://openvisko.org/rdf/pml2/formats/XML.owl#XML" value="http://openvisko.org/rdf/pml2/formats/XML.owl#XML">XML</option>
        </select>
        <br>
        <br>
        
        Target Type
        <br>
        <select name="target_type_drop" width="270" style="width: 200px">
        <option value="default">-- Choose Type --</option>
        <option title="http://d3js.org/d3.owl#Graph" value="http://d3js.org/d3.owl#Graph">http://d3js.org/d3.owl#Graph</option>
        <option title="http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS" value="http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS">http://gmt.soest.hawaii.edu/gmt-data.owl#2D_Grid_COARDS</option>
        <option title="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon" value="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon">http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_LatLon</option>
        <option title="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time" value="http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time">http://iridl.ldeo.columbia.edu/ontologies/cf-obj.owl#Variable_with_Time</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths">http://openvisko.org/rdf/ontology/visko.owl#VisKo_DataTransformationPaths</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary">http://openvisko.org/rdf/ontology/visko.owl#VisKo_InstanceSummary</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase">http://openvisko.org/rdf/ontology/visko.owl#VisKo_KnowledgeBase</option>
        <option title="http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths" value="http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths">http://openvisko.org/rdf/ontology/visko.owl#VisKo_OperatorPaths</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d18" value="http://rio.cs.utep.edu/ciserver/ciprojects/CrustalModeling/CrustalModeling.owl#d18">XYZ Data</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat">http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DFloat</option>
        <option title="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger" value="http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger">http://rio.cs.utep.edu/ciserver/ciprojects/HolesCode/HolesCodeSAW3.owl#Array1DInteger</option>
        <option title="http://www.vtk.org/vtk-data.owl#vtkImageData3D" value="http://www.vtk.org/vtk-data.owl#vtkImageData3D">http://www.vtk.org/vtk-data.owl#vtkImageData3D</option>
        <option title="http://www.vtk.org/vtk-data.owl#vtkPolyData" value="http://www.vtk.org/vtk-data.owl#vtkPolyData">http://www.vtk.org/vtk-data.owl#vtkPolyData</option>
        <option title="http://www.w3.org/2002/07/owl#Thing" value="http://www.w3.org/2002/07/owl#Thing">http://www.w3.org/2002/07/owl#Thing</option>
        </select>
        <br>
        <br>
            
            
            </div>
        </div>
        
        <div class="div666"> 
        Error
        <br>
        <select name="error_drop" width="270" style="width: 200px">  
               
          <option value="Sytax Error">Sytax Error</option>
  	      <option value="No Result Error">No Result Error</option>
          <option value="Malformed URI Error">Malformed URI Error</option>
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
        
        
        ____________________________________________________________________________________________________________________________
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
			 String q = "SELECT * FROM user_queries ";

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
    <p class="fl_right">Template by <a href="http://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    
    <br class="clear" />
  </div>
              
</div>
</body>
</html>
