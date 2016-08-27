rendering
renderMiscPanelOn: html
	html mdlTabsPanel
		id: 'misc';
		with: [ 
			html heading level4; with: 'Badges'.
			html mdlGrid: [ 
				html mdlCellDesktop: 6 tablet: 4 phone: 2	with: [ html mdlIconBadge dataBadge: '2'; with: #account_box ].
				html mdlCell desktopSize: 6; tabletSize: 4; hidePhone; with: [ html mdlBadge dataBadge: '4'; with: 'Inbox' ].
			].
			"html mdlIconBadge dataBadge: '2'; with: #account_box"
			"html mdlBadge dataBadge: '4'; with: 'Inbox'."
			html heading level4; with: 'Progress bar'.
			html mdlProgressBar.
			html break.
			html mdlProgressBar indeterminate.
			html heading level4; with: 'Spinner'.
			html mdlSpinner active.
			html break.
			html mdlSpinner active; singleColor.
			html break.
			html heading level4; with: 'Icon toggle'.
			html mdlIconToggleContainer for:'icon-toggle-1'; rippleEffect; with: [ 
				html mdlIconToggle id: 'icon-toggle-1' ; value: true.
				html mdlIcon toggle; with: 'format_bold'
			].
			html mdlIconToggleContainer for:'icon-toggle-2'; rippleEffect ; with: [ 
				html mdlIconToggle id: 'icon-toggle-2' .
				html mdlIcon toggle; with: 'format_italic'
			].
			html heading level4; with: 'Switch'.
			html mdlSwitchContainer for: 'switch-1'; with: [ 
				html mdlSwitch id: 'switch-1'; value: true.
				html mdlSwitchLabel  ].
			html heading level4; with: 'Switch'.
			html mdlSwitchContainer for: 'switch-2'; with: [ 
				html mdlSwitch id: 'switch-2'.
				html mdlSwitchLabel with: 'Label' ].
			html heading level4; with: 'Icons'.
			self renderIconsPanelOn: html
		]