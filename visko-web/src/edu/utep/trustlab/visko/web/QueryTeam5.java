package edu.utep.trustlab.visko.web;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.utep.trustlab.visko.web.requestHandler.planning.ExecuteQueryServlet;

/*
 * Query class
 */
public class QueryTeam5 
{
	/*
	 * Will get the results of an executed Query.
	 */
	public ArrayList<PipelineTeam5> executeQuery(HttpServletRequest request, HttpServletResponse response)
	{
		
		return new ExecuteQueryServlet().getPipeList(request, response);
	}
	
	/*
	 * Get the Parameters associated with the query. 
	 */
	public String[] getParams(String q)
	{
		
		return new ExecuteQueryServlet().getQueryParams(q);
	}
	
	
}
