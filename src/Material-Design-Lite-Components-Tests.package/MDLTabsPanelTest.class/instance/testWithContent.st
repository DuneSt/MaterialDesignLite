tests
testWithContent
	self assert: [ :html | html mdlTabsPanel: 'test' ] generates: '<div class="mdl-tabs__panel">test</div>'