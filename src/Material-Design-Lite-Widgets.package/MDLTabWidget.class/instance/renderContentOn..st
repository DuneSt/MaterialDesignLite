rendering
renderContentOn: html
	html
		mdlTabs: [ html
				mdlTabBar: [ tabs
						keysAndValuesDo: [ :aString :aDictionary | 
							aDictionary at: #id put: html nextId.
							html mdlTab
								url: '#' , (aDictionary at: #id);
								isActiveIf: (tabs indexOfKey: aString) = 1;
								with: aString ] ].
			tabs
				keysAndValuesDo: [ :aString :aDictionary | 
					html mdlTabsPanel
						id: (aDictionary at: #id);
						isActiveIf: (tabs indexOfKey: aString) = 1;
						with: (aDictionary at: #object) ] ]