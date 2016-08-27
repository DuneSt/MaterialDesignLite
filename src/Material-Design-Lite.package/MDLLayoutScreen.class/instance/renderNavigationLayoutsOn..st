as yet unclassified
renderNavigationLayoutsOn: html
	html heading level5 class: 'section-title';with: 'NAVIGATION'.
	self renderTransparentHeaderOn: html.
	self renderFixedDrawerNoHeaderOn: html.
	self renderFixedHeaderAndDrawerOn: html.
	self renderScrollableTabsOn: html.
	self renderFixedTabsOn: html