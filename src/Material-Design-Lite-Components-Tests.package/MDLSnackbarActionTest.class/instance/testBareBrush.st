tests
testBareBrush
	self assert: [ :html | html brush: MDLSnackbarAction new ] generates: '<button class="mdl-snackbar__action" type="submit"></button>'