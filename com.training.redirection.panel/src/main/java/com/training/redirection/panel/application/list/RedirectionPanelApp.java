package com.training.redirection.panel.application.list;

import com.training.redirection.panel.constants.RedirectionPanelCategoryKeys;
import com.training.redirection.panel.constants.RedirectionPortletKeys;

import com.liferay.application.list.BasePanelApp;
import com.liferay.application.list.PanelApp;
import com.liferay.portal.kernel.model.Portlet;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

/**
 * @author Megha Rawat
 */
@Component(
	immediate = true,
	property = {
		"panel.app.order:Integer=100",
		"panel.category.key=" + RedirectionPanelCategoryKeys.CONTROL_PANEL_CATEGORY
	},
	service = PanelApp.class
)
public class RedirectionPanelApp extends BasePanelApp {

	@Override
	public String getPortletId() {
		return RedirectionPortletKeys.REDIRECTION;
	}

	@Override
	@Reference(
		target = "(javax.portlet.name=" + RedirectionPortletKeys.REDIRECTION + ")",
		unbind = "-"
	)
	public void setPortlet(Portlet portlet) {
		super.setPortlet(portlet);
	}

}