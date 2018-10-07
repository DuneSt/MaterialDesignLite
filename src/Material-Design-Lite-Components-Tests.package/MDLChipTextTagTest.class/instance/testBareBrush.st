tests
testBareBrush
	self assert: [ :html | html mdlChipText ] generates: '<span class="mdl-chip__text"></span>'