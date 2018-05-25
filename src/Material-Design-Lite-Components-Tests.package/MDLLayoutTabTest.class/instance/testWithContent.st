tests
testWithContent
	self assert: [ :html | html mdlLayoutTab: 'test' ] generates: '<a class="mdl-layout__tab">test</a>'