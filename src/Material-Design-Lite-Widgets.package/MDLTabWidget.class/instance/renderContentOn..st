rendering
renderContentOn: html
	html
		mdlTabs: [ html
				mdlTabBar: [ tabs
						keysAndValuesDo: [ :aString :aDictionary | 
							aDictionary at: #id put: html nextId.
							html mdlTab
								url: '#' , (aDictionary at: #id);
								with: aString ] ].
			tabs
				valuesDo: [ :aDictionary | 
					html mdlTabsPanel
						id: (aDictionary at: #id);
						with: (aDictionary at: #object) ] ]