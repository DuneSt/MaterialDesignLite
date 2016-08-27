rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 class: 'section-title';with: 'Snackbar'.
			html paragraph: 'Transient popup notifications.'.
			self renderSnackbarOn: html.
			self renderToastOn: html ]