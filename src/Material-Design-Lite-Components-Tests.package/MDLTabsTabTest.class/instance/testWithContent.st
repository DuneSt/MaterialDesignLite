tests
testWithContent
	self assert: [ :html | html mdlTab: 'test' ] generates: '<a class="mdl-tabs__tab">test</a>'