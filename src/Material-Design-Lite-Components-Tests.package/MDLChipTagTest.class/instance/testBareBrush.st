tests
testBareBrush
	self assert: [ :html | html mdlChip ] generates: '<span class="mdl-chip"></span>'