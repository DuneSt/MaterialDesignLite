tests
testRight
	self assert: [ :html | html mdlTooltip right ] generates: '<span class="mdl-tooltip mdl-tooltip--right"></span>'