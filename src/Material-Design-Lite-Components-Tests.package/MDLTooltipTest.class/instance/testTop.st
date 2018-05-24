tests
testTop
	self assert: [ :html | html mdlTooltip top ] generates: '<span class="mdl-tooltip mdl-tooltip--top"></span>'