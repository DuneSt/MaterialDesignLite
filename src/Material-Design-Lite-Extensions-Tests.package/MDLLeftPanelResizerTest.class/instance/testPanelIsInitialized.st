tests
testPanelIsInitialized
	self assert: [ :html | html render: MDLLeftPanelResizer new ] generatedIncludes: 'initLeftResizer()'