tests
testBareBrush
	self assert: [ :html | html mdlTooltip ] generates: '<span class="mdl-tooltip"></span>'