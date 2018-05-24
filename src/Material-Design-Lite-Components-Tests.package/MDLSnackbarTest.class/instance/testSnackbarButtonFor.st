tests
testSnackbarButtonFor
	self
		assert: [ :html | html mdlSnackbarButtonFor: html mdlSnackbar ]
		generatedIncludesAll:
			#('<div class="mdl-js-snackbar mdl-snackbar" id="id1"><div class="mdl-snackbar__text"></div><button class="mdl-snackbar__action" type="submit"></button></div>' '<button class="mdl-button mdl-js-button"' 'snackbarContainer.MaterialSnackbar.showSnackbar(data)' '</button>')