tests
testWithContent
	self assert: [ :html | html mdlGrid: 'test' ] generates: '<div class="mdl-grid">test</div>'