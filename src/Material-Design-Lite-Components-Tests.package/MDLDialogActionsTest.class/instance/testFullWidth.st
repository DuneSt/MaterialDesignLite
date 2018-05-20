tests
testFullWidth
	self assert: [ :html | html mdlDialogActions fullWidth ] generates: '<div class="mdl-dialog__actions mdl-dialog__actions--full-width"></div>'