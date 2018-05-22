tests
testWithContent
	self assert: [ :html | html mdlNavigation: 'test' ] generates: '<nav class="mdl-navigation">test</nav>'