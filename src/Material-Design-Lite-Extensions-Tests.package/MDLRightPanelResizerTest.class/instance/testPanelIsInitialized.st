tests
testPanelIsInitialized
	self assert: [ :html | html render: MDLRightPanelResizer new ] generatedIncludes: 'initRightResizer()'