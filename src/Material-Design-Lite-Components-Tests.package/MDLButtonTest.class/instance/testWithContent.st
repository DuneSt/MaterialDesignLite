tests
testWithContent
	self assert: [ :html | html mdlButton: 'Validate' ] generates: '<button class="mdl-button mdl-js-button" type="submit">Validate</button>'