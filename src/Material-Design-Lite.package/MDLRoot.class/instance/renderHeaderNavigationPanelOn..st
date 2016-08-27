rendering
renderHeaderNavigationPanelOn: html
	html mdlLayout drawerButton; with: [  
		html mdlLayoutHeader: [  
			html mdlLayoutIcon.
			html mdlLayoutHeaderRow: [  
				html mdlLayoutTitle: 'Simple Header'.
			].
		]
	]