rendering
renderHeaderNavigationPanelOn: html
	html mdlTabsPanel
		id: 'headerNavigation';
		with: [ 
			html mdlLayout with: [  
				html mdlLayoutHeader: [  
				html mdlLayoutIcon.
				html mdlLayoutHeaderRow: [  
					html mdlLayoutTitle: 'Simple Header'.
					html mdlLayoutSpacer.
					html mdlNavigation: [
						html mdlNavigationLink url: '#'; with: 'Nav link 1'.  
						html mdlNavigationLink url: '#'; with: 'Nav link 2'.
						html mdlNavigationLink url: '#'; with: 'Nav link 3'.
					]
				]
			].
			html mdlLayoutDrawer: [
				html mdlLayoutTitle: 'Simple Header'. 
				html mdlNavigation: [
						html mdlNavigationLink url: '#'; with: 'Nav link 1'.  
						html mdlNavigationLink url: '#'; with: 'Nav link 2'.
						html mdlNavigationLink url: '#'; with: 'Nav link 3'.
					] 
			].
		] 
	]