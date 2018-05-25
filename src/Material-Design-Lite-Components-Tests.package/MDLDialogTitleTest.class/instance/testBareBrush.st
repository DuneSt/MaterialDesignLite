tests
testBareBrush
	self assert: [ :html | html mdlDialogTitle ] generates: '<h4 class="mdl-dialog__title"></h4>'