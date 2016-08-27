subElements
renderBehavioralButtonsPanelOn: html
	html mdlTabsPanel
		id: 'behavioralbuttons';
		with: [ self renderDialogOn: html.
			html break.
			self renderSnackbarOn: html ]