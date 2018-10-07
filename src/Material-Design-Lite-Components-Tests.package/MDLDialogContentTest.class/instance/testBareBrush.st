tests
testBareBrush
	self assert: [ :html | html mdlDialogContent ] generates: '<div class="mdl-dialog__content"></div>'