as yet unclassified
renderScreenContentOn: html
	html paragraph: 'Transient popup notifications.'.
	self renderSnackbarOn: html.
	self renderToastOn: html