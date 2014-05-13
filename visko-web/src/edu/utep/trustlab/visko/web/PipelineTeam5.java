package edu.utep.trustlab.visko.web;

/*
 * Pipeline Class.
 */
public class PipelineTeam5 
{
	String id;
	String runlink;
	String abstraction;
	String format;
	String editLink;
	
	int badURI;
	int badsyntax;
	
	public PipelineTeam5()
	{
		this.id="df";
		this.runlink="df";
		this.abstraction="df";
		this.format="df";
		this.editLink="df";
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRunlink() {
		return runlink;
	}
	public void setRunlink(String runlink) {
		this.runlink = runlink;
	}
	public String getAbstraction() {
		return abstraction;
	}
	public void setAbstraction(String abstraction) {
		this.abstraction = abstraction;
	}
	public String getFormat() {
		return format;
	}
	public void setFormat(String format) {
		this.format = format;
	}
	
	public String geteditLink() {
		return editLink;
	}
	public void seteditLink(String edit) {
		this.editLink = edit;
	}
	
	public void setBadURI(int x)
	{
		this.badURI=x;
	}
	
	public int getBadURI()
	{
		return badURI;
	}
	
	public void setSyntax(int x)
	{
		this.badsyntax=x;
	}
	
	public int getbadSyntax()
	{
		return badsyntax;
	}

}
