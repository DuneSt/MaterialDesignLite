tests
testWithContent
	self assert: [ :html | html mdlCard: 'test' ] generates: '<div class="mdl-card">test</div>'