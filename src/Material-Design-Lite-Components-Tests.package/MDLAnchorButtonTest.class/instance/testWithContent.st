tests
testWithContent
	self assert: [ :html | html mdlAnchorButton with: 'Validate' ] generates: '<a class="mdl-button mdl-js-button">Validate</a>'