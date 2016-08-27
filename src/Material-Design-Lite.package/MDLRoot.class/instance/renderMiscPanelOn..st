rendering
renderMiscPanelOn: html
	html mdlTabsPanel
		id: 'misc';
		with: [ 
			html heading level4 with: 'Badges'.
			html mdlIconBadge caption: '2'; with: #account_box.
			html mdlBadge caption: '4'; with: #Inbox.
			html heading level4 with: 'Progress bar'.
			html heading level4 with: 'Spinner'.
			html heading level4 with: 'Icon toggle'.
		]