tests
testWithContent
	self assert: [ :html | html mdlLayoutHeader: 'test' ] generates: '<header class="mdl-layout__header">test</header>'