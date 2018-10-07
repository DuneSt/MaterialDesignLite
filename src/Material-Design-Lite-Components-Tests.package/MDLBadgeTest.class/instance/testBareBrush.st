tests
testBareBrush
	self assert: [ :html | html mdlBadge ] generates: '<span class="mdl-badge"></span>'