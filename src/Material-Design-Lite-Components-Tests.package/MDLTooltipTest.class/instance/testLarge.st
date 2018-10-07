tests
testLarge
	self assert: [ :html | html mdlTooltip large ] generates: '<span class="mdl-tooltip mdl-tooltip--large"></span>'