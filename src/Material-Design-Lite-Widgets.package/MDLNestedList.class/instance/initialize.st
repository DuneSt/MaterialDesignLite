initialization
initialize
	super initialize.
	self
		listMaxSize: 150;
		displayResearchField: false;
		isJsAction: false;
		listStyle: #standard;
		filterInsensitiveBeginsWith;
		onLoadHook: 'componentHandler.upgradeDom();'