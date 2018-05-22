tests
testBareBrush
	self assert: [ :html | html mdlSwitchContainer ] generates: '<label class="mdl-switch mdl-js-switch"></label>'