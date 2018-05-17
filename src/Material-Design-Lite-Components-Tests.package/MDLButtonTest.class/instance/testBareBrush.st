tests
testBareBrush
	self assert: [ :html | html mdlButton ] generates: '<button class="mdl-button mdl-js-button" type="submit"></button>'