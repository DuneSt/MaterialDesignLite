tests
testBareBrush
	self assert: [ :html | html mdlSnackbar ] generates: '<div class="mdl-js-snackbar mdl-snackbar" id="id1"><div class="mdl-snackbar__text"></div><button class="mdl-snackbar__action" type="submit"></button></div>'