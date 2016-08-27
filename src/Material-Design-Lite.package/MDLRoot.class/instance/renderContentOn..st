rendering
renderContentOn: html
	html mdlTabs: [ 
		self renderTabBarOn: html.
		
		"here are the panels tht you can switch between using the tab bar"
		self renderGridPanelOn: html.
		self renderHeaderNavigationPanelOn: html.
		self renderFooterPanelOn: html.
		self renderButtonsPanelOn: html.
		self renderTablesPanelOn: html.
		self renderFormsPanelOn: html.
		self renderDropdownMenuPanelOn: html.
		self renderTooltipsPanelOn: html.
		self renderIconsPanelOn: html.
	]

	