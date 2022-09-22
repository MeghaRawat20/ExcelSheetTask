package com.training.redirection.web.util;

import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import com.liferay.portal.kernel.theme.ThemeDisplay;
import com.liferay.portal.kernel.util.ParamUtil;
import com.training.redirectionn.service.service.URLLocalServiceUtil;

public class RedirectionUtil {

	public static ResourceRequest addUrl(ResourceRequest resourceRequest, ResourceResponse resourceResponse,
			ThemeDisplay themeDisplay) {
		long groupId = themeDisplay.getScopeGroupId();
		long companyId = themeDisplay.getCompanyId();
		long createdBy = themeDisplay.getUserId();
		//long createdDate = themeDisplay.getUserId();
		String oldUrl = ParamUtil.getString(resourceRequest, "oldUrl");
		String newUrl = ParamUtil.getString(resourceRequest, "newUrl");
		System.out.println(oldUrl + "   " +newUrl +"   " +groupId +"   " + companyId+"  " + createdBy+ "   ");
		URLLocalServiceUtil.addUrl(oldUrl, newUrl, groupId);
		return resourceRequest;
		
		//JSONObject urlObject = JSONFactoryUtil.createJSONObject();
		//urlObject.put("old-url", oldUrl);
		
	}


}
