tests
testBottom
	self assert: [ :html | html mdlTooltip bottom ] generates: '<span class="mdl-tooltip mdl-tooltip--bottom"></span>'