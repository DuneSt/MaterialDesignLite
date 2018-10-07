tests
testOverlap
	self assert: [ :html | html mdlBadge overlap ] generates: '<span class="mdl-badge mdl-badge--overlap"></span>'