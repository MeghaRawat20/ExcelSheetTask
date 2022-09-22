<%@ include file="/init.jsp" %>
<%@ include file="ExcelData/data.jsp" %>
<p>
	<b><liferay-ui:message key="redirection.caption" /></b>
</p>

<script type="text/javascript">

function validateOldUrl(){
	$("#<portlet:namespace/>old-url-error").val();
	 $("#<portlet:namespace />new-url-error").val();
	var newUrl = $("#<portlet:namespace/>new-url").val();
	var oldUrl = $("#<portlet:namespace/>old-url").val();
	if(oldUrl==""){
		$("#<portlet:namespace/>old-url-error").html('old url cannot be empty');
		
	}else if(oldUrl=="" && newUrl==""){
		$("#<portlet:namespace/>old-url-error").html('old url cannot be empty');
		$("#<portlet:namespace/>new-url-error").html('new url cannot be empty');
		return false;
	}else{
		$("#<portlet:namespace/>old-url-error").html('');	
	}
	return true;
   
}
function validateNewUrl(){
	
    $("#<portlet:namespace />new-url-error").val();
    var newUrl = $("#<portlet:namespace/>new-url").val();
    
    if(newUrl=="" ){
    	$("#<portlet:namespace/>new-url-error").html('new url cannot be empty');
    	return false;
    }else{
		$("#<portlet:namespace/>new-url-error").html('');	
			
    }

    return true;
}

function addUrl(){
	var oldUrl = $("#<portlet:namespace/>old-url").val();
	var newUrl = $("#<portlet:namespace/>new-url").val();
	console.log(oldUrl);
	console.log(newUrl);
	if(validateOldUrl() && validateNewUrl()){
	$.ajax({
        url : '${resourceUrl}',
        type: 'POST',
        dataType : "text",
        data : {
        	"<portlet:namespace/>newUrl" : newUrl,
        	"<portlet:namespace/>oldUrl" : oldUrl,
        	"<portlet:namespace/>command" : "addUrl",
        },
        success : function(data) {
        		
        },
        error: function () {
           
        }
	});
  };

}

function clearData(){
    window.location.reload();
} 

</script>