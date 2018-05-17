tests
testResetType
	self assert: [ :html | html mdlButton resetType; with: 'Validate' ] generates: '<button class="mdl-button mdl-js-button">Validate</button>'