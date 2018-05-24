tests
testLeft
	self assert: [ :html | html mdlTooltip left ] generates: '<span class="mdl-tooltip mdl-tooltip--left"></span>'