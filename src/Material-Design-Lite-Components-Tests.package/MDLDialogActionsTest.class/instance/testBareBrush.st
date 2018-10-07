tests
testBareBrush
	self assert: [ :html | html mdlDialogActions ] generates: '<div class="mdl-dialog__actions"></div>'