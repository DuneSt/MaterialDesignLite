initialization
initializeWidgetsHeader
	^ MDLTitleHeaderSection new
		app: self;
		tabs:
				(OrderedDictionary new
						at: 'Components' put: [ self switchToComponents ];
						at: 'Widgets' put: [ self switchToWidgets ];
						yourself);
		activeTab: 'Widgets';
		yourself