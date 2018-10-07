tests
testBareBrush
	self assert: [ :html | html mdlDialog ] generates: '<dialog class="mdl-dialog"></dialog>'