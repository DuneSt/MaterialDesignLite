tests
testBareBrush
	self assert: [ :html | html mdlIconToggleContainer ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle"></label>'