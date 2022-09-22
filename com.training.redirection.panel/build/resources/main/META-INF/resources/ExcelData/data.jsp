<%@ include file="../init.jsp" %>
<body style="backgroundcolor:white">
<div style="margin:40px;">
<form method="POST" >
	<div>		
	<div class="row" >
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">
		<label><liferay-ui:message key="old-url"></liferay-ui:message></label>
		<input type="url" class="form-control" placeholder="Enter Old Url" id="<portlet:namespace/>old-url" name="<portlet:namespace/>old-url" value=""   onchange="validateOldUrl()"/>
		<span id="<portlet:namespace />old-url-error"></span>
		</div>
		
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">
		<label><liferay-ui:message key="new-url"></liferay-ui:message></label>
		<input type="text" class="form-control" placeholder="Enter New Url" id="<portlet:namespace/>new-url" name="<portlet:namespace/>new-url" value="" onchange="validateNewUrl()"  />
		<span id="<portlet:namespace />new-url-error"></span>
		</div>
	</div>
	<div class="row" >
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">	
			<input type="button" class="btn btn-primary"  id="<portlet:namespace/>save" name="<portlet:namespace/>save" value="save" onclick="addUrl()"  />
			<input type="button" class="btn btn-secondary"  id="<portlet:namespace/>clear" name="<portlet:namespace/>clear" value="clear" onclick="clearData()"    />
		</div>
					
	</div>
	<div class="row">
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">
		<h2><b>FILE UPLOAD</b></h2>
		</div>		
	</div>
	 <div class="row">
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">
			<label><liferay-ui:message key="no-file-selected"></liferay-ui:message></label>
			<input type="file"  class="form-control"   id="<portlet:namespace/>no-file-selected" name="<portlet:namespace/>no-file-selected" value="" onchange="validateFile()" />
			<span id="<portlet:namespace />no-file-selected-error"></span>
		</div>		
	</div>
	<div class="row" >
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">	
			<input type="button" class="btn btn-primary"  id="<portlet:namespace/>upload-file" name="<portlet:namespace/>upload-file" value="upload" onclick="uploadFile()"  />	
			<span id="<portlet:namespace />no-file-uploaded-error"></span>		
		</div>
	</div>
	<div class="row">
		<div class="col-md-4 col-sm-12 col-xs-12 form-group">
		<h2><b>LIST OF URL'S</b></h2>
		</div>		
	</div>

</form>
</div>
</body>