

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>VisKo: Open Source Visualization Knowledge</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta http-equiv="imagetoolbar" content="no" />
<link rel="stylesheet" href="styles/layout2.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">  
        $(document).ready(function(){
            $("#report tr:odd").addClass("odd");
            $("#report tr:not(.odd)").hide();
            $("#report tr:first-child").show();
            
            $("#report tr.odd").click(function(){
                $(this).next("tr").toggle();
                $(this).find(".arrow").toggleClass("up");
            });
            //$("#report").jExpand();
        });
    </script>
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo">
      <a href="http://openvisko.org/"><img src="http://openvisko.org/visko-just-logo.png" alt="" border="0" /></a><font size=
"4px">VisKo: Open Source Visualization Knowledge</font>
    </div>
    <div id="newsletter">
      <p>Welcome!</p> <%--   <% String user=session.getValue("email").toString(); out.print(user); %> --%></%-->
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
        <li><a href="searchHistory.jsp">Search History</a></li>
        <li class="active"><a href="?">Visualize</a></li>
		<li><a href="#">Manage Services</a></li>
		<li><a href="configureaccount.jsp">Configure Account</a></li>
      </ul>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col5">
<div class="wrapper col5">
  <div id="container">
	<div align="center">
	Option 1: Submit Visualization Query
	<form action="ViskoServletManager">
    <input type="hidden" name="requestType" value="execute-query" /> 	
		
	<td style="width: 996px; " colspan="2" align="right"><textarea style="width: 989px; height: 152px; background-color: #AFEEEE" id="queryText" name="query"></textarea></td>
	
	<tr>
		<td></td>
		<td align="right">
		<table>
			<tr>
				<td><input type="submit" id="submitButton" style="width: 156px"></td>
			</tr>
		</table>
		</td>
	</tr>
</form>
    
	
	<br><hr>
	Option 2: Interact With Operation Wizard
<table id="report">
        <tr>
            <th></th>
        </tr>
        <tr>
            <td align="center">1D Abstractions</td>
        </tr>
        <tr>
            <td colspan="5">
                1. Timeline
                <br>
                <a href=setQueryParameters.jsp?abs=1D_Timeline><img src="images/graphs/1d-timeline.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
            </td>
        </tr>
        
        
        
        
        
		<tr>
			<td align="center">2D Abstractions</td>
		</tr>
		
			<tr>
			<td colspan="5" style="word-wrap:break-word">
				<div>
				<table>
					
					<td>
					1. Contour Map
				<br>
				<a href=setQueryParameters.jsp?abs=2D_ContourMap><img src="images/graphs/2d-contourmap.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
				<td>
					2. Force Graph
				<br>
				<a href=setQueryParameters.jsp?abs=2D_ForceGraph><img src="images/graphs/2d-forcegraph-d32.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
				<td>
					3. Point Map
				<br>
				<a href=setQueryParameters.jsp?abs=2D_PointMap><img src="images/graphs/2d-pointmap-gmt.png" align="left"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
				
				<td>
					4. Raster Map
				<br>
				<a href=setQueryParameters.jsp?abs=2D_RasterMap><img src="images/graphs/2d-rastermap.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
					
				<td>
					5. Species Distribution Map
				<br>
				<a href=setQueryParameters.jsp?abs=2D_SpeciesDistribution_Map><img src="images/graphs/.png" align="left" style="width:250px;height:150px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
					<tr></tr>
					
				<td>
					6. Spherized Raster
				<br>
				<a href=setQueryParameters.jsp?abs=2D_SpherizedRaster><img src="images/graphs/2d-spherizedraster2.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
					<tr></tr>
					
				<td>
					7. Time Series Plot
				<br>
				<a href=setQueryParameters.jsp?abs=2D_TimeSeriesPlot><img src="images/graphs/2d-timeseries.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				<td>
					8. VisKo Data Transformations Force Graph
				<br>
				<a href=setQueryParameters.jsp?abs=2D_VisKo_DataTransformations_ForceGraph><img src="images/graphs/2d-forcegraph.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				<td>
					9. VisKo Instances Bar Chart
				<br>
				<a href=setQueryParameters.jsp?abs=2D_VisKo_Instances_BarChart><img src="images/graphs/2d-barchart-d3.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				<td>
					10. Visko Operator Paths Force Graph
				<br>
				<a href=setQueryParameters.jsp?abs=2D_Visko_OperatorPaths_ForceGraph><img src="images/graphs/2d-forcegraph-d3.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				</table>
			</div>
			</td>
		</tr>
			
			
		
			<tr>
			<td align="center">3D Abstractions</td>
			</tr>
		<tr>
			<td colspan="5" style="word-wrap:break-word">
				<div>
				<table>
					
					<td>
					1. Bar Chart
				<br>
				<a href=setQueryParameters.jsp?abs=3D_BarChart><img src="images/graphs/3d-barchart.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
				<td>
					2. Iso Surfaces Rendering
				<br>
				<a href=setQueryParameters.jsp?abs=3D_IsoSurfacesRendering><img src="images/graphs/3d-isosurfacesrendering.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
				<td>
					3. Mesh Plot
				<br>
				<a href=setQueryParameters.jsp?abs=3D_MeshPlot><img src="images/graphs/3d-meshplot.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
				
				<td>
					4. Molecular Structure
				<br>
				<a href=setQueryParameters.jsp?abs=3D_MolecularStructure><img src="images/graphs/3d-molecular.jpg" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
					
					
				<td>
					5. Molecular Structure Cartoon
				<br>
				<a href=setQueryParameters.jsp?abs=3D_MolecularStructureCartoon><img src="images/graphs/.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
					<tr></tr>
					
				<td>
					6. Point Plot
				<br>
				<a href=setQueryParameters.jsp?abs=3D_PointPlot><img src="images/graphs/3d-pointplot.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
					<tr></tr>
					
				<td>
					7. Raster Cube
				<br>
				<a href=setQueryParameters.jsp?abs=3D_RasterCube><img src="images/graphs/3dcube.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				<td>
					8. Surface Plot
				<br>
				<a href=setQueryParameters.jsp?abs=3D_SurfacePlot><img src="images/graphs/3d-surfaceplot.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				<td>
					9. Volume Rendering
				<br>
				<a href=setQueryParameters.jsp?abs=3D_VolumeRendering><img src="images/graphs/3d-volumerendering-vtk.png" align="left" style="width:250px"></a>A contour line (also isoline, isopleth, or isarithm) of a function of two variables is a curve along which the function has a constant value.[1] In cartography, a contour line (often just called a "contour") joins points of equal elevation (height) above a given level, such as mean sea level.
				</td>
				<tr></tr>
				
				</table></div></td></tr></table></div></div>
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
