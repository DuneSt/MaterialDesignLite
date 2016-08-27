rendering
renderContentOn: html
	html mdlTabs: [ 
		html mdlTabBar: [
			html mdlTab isActive; url: '#grid'; with: 'Grid' .
			html mdlTab url: '#headerNavigation'; with: 'Header Navigation'.
			html mdlTab: 'Footer'.
			html mdlTab: 'Tabs'.
			html mdlTab: 'Buttons'.		
			html mdlTab: 'Tables'.
			html mdlTab: 'Forms'.
			html mdlTab: 'Dropdown menu'.
			html mdlTab: 'Tooltips'.
			html mdlTab: 'Icons'.
		].
		html mdlTabsPanel isActive; id: 'grid'; with: [ html text: 'This is a Grid!' ].
		html mdlTabsPanel id: 'headerNavigation'; with: [ html text: 'This is header navigation' ]
	]

	