initialization
initializeComponentsHeader
	^ MDLTitleHeaderSection new
		app: self;
		tabs:
				(OrderedDictionary new
						at: 'Components' put: [ self switchToComponents ];
						at: 'Widgets' put: [ self switchToWidgets ];
						yourself);
		activeTab: 'Components';
		yourself