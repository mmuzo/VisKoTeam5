/*
Copyright (c) 2012, University of Texas at El Paso
All rights reserved.
Redistribution and use in source and binary forms, with or without modification, are permitted
provided that the following conditions are met:

	-Redistributions of source code must retain the above copyright notice, this list of conditions
	 and the following disclaimer.
	-Redistributions in binary form must reproduce the above copyright notice, this list of conditions
	 and the following disclaimer in the documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.*/

package edu.utep.trustlab.visko.ontology.viskoOperator;

import com.hp.hpl.jena.ontology.Individual;
import com.hp.hpl.jena.ontology.ObjectProperty;
import com.hp.hpl.jena.ontology.OntResource;
import com.hp.hpl.jena.rdf.model.NodeIterator;

import edu.utep.trustlab.visko.ontology.model.ViskoModel;
import edu.utep.trustlab.visko.ontology.pmlp.Format;
import edu.utep.trustlab.visko.ontology.vocabulary.ViskoO;
import edu.utep.trustlab.visko.ontology.vocabulary.supplemental.OWL;

public abstract class DataSource extends Operator {
	
	private Format outputFormat;	
	private OntResource outputDataType;

	// Object Properties
	private ObjectProperty hasOutputFormat;	
	private ObjectProperty hasOutputDataType;
	
	public DataSource(String baseURL, String name, ViskoModel viskoModel) {
		super(ViskoO.CLASS_URI_DataSource, baseURL, name, viskoModel);
	}

	public DataSource(String indURI, ViskoModel viskoModel) {
		super(indURI, viskoModel);
	}
	
	public void setOutputFormat(Format outFormat){
		outputFormat = outFormat;
	}
	
	public Format getOutputFormat(){
		return outputFormat;
	}
		
	public void setOutputDataType(OntResource outDataType){
		outputDataType = outDataType;
	}
		
	public String getOutputDataTypeURI(){
		return outputDataType.getURI();
	}
	
	private void addHasOutputFormat(Individual subjectInd) {
		subjectInd.addProperty(hasOutputFormat, outputFormat.getIndividual());		
	}
	
	private void addHasOutputDataType(Individual subjectInd) {
		
		if(outputDataType == null)
			subjectInd.addProperty(hasOutputDataType, OWL.getOWLThing());
		else
			subjectInd.addProperty(hasOutputDataType, outputDataType);
	}
	
	@Override
	protected boolean allFieldsPopulated() {
		boolean hasOutputFormat = outputFormat != null;
		return hasOutputFormat;
	}

	@Override
	protected void populateFieldsWithIndividual(Individual ind) {
		// populate output format
		NodeIterator outFormat = ind.listPropertyValues(hasOutputFormat);
		outputFormat = new Format(outFormat.next().as(Individual.class).getURI(), model);
		
		// populate output data type
		NodeIterator outDataType = ind.listPropertyValues(hasOutputDataType);
		outputDataType = outDataType.next().as(OntResource.class);
	}

	@Override
	protected Individual createNewIndividual() {
		Individual ind = super.createNewIndividual();
		
		// add output format
		this.addHasOutputFormat(ind);
		
		// add output data types
		this.addHasOutputDataType(ind);
		
		return ind;
	}

	@Override
	protected void setProperties() {
		hasOutputFormat = model.getObjectProperty(ViskoO.PROPERTY_URI_hasOutputFormat);		
		hasOutputDataType = model.getObjectProperty(ViskoO.PROPERTY_URI_hasOutputDataType);
	}

	@Override
	protected void initializeFields() {
	}
}
