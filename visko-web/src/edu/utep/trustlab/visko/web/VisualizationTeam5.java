package edu.utep.trustlab.visko.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.utep.trustlab.visko.web.requestHandler.execution.ExecutePipelineServlet;

public class VisualizationTeam5
{

	/*
	 * Get the visualization to the pipeline selected. 
	 */
	public void getVisualization(HttpServletRequest request, HttpServletResponse response, ViskoServletManager viskoServletManager) 
	{
		try {
			new ExecutePipelineServlet().setRedirection(request, response, viskoServletManager);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
