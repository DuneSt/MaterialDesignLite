rendering
renderMiscPanelOn: html
	html mdlTabsPanel
		id: 'misc';
		with: [ 
			html heading level4 with: 'Badges'.
			html mdlIconBadge caption: '2'; with: #account_box.
			html mdlBadge caption: '4'; with: #Inbox.
			html heading level4 with: 'Progress bar'.
			html mdlProgressBar.
			html break.
			html mdlProgressBar indeterminate.
			html heading level4 with: 'Spinner'.
			html mdlSpinner active.
			html break.
			html mdlSpinner active; singleColor.
			html break.
			html heading level4 with: 'Icon toggle'.
		]