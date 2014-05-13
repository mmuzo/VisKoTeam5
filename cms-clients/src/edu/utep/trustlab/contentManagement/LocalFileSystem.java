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


package edu.utep.trustlab.contentManagement;

import java.io.File;

import edu.utep.trustlab.contentManagement.util.FileUtilities;
import edu.utep.trustlab.contentManagement.util.GetURLContents;

public class LocalFileSystem extends ContentManager {
	
	private String url;
	private String path;
	private boolean saveInWorkspace;
	
	public LocalFileSystem(String serverURL, String serverPath) {
		url = serverURL;
		
		if(!url.endsWith("/"))
			url = url + "/";
		
		path = serverPath;
		saveInWorkspace = false;
	}
	
	public void setSaveInWorkspace(){
		saveInWorkspace = true;
	}
	
	public LocalFileSystem(String serverURL){
		url = serverURL;
	}
	
	public String getBaseURL(){
		return url;
	}
	public String saveDocument(String fileContents, String fileName) {
		if(saveInWorkspace)
			FileUtilities.writeTextFile(fileContents, ContentManager.getWorkspacePath(), fileName);
		
		FileUtilities.writeTextFile(fileContents, path, fileName);
		return url + fileName;
	}
	
	@Override
	public String saveDocument(byte[] fileContents, String fileName) {
		if(saveInWorkspace)
			FileUtilities.writeBinaryFile(fileContents, ContentManager.getWorkspacePath(), fileName);

		FileUtilities.writeBinaryFile(fileContents, path, fileName);
		return url + fileName;
	}
		
	@Override
	public String saveDocument(String url){
		byte[] fileContents = GetURLContents.downloadFile(url);
		String fileName = GetURLContents.getFileNameFromURL(url);
		
		return saveDocument(fileContents, fileName);
	}

	@Override
	public String saveDocument(File file) {
		return url + file.getName();
	}
}
