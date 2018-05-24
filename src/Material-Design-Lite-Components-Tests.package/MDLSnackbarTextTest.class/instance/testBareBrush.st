tests
testBareBrush
	self assert: [ :html | html brush: MDLSnackbarText new ] generates: '<div class="mdl-snackbar__text"></div>'