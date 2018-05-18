tests
testBareBrush
	self assert: [ :html | html mdlIconBadge ] generates: '<div class="mdl-badge material-icons"></div>'