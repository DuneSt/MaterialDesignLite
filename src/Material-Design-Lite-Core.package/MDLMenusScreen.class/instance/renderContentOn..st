rendering
renderContentOn: html
	html div class: 'screen-content'; with: [ 
		html heading level5 class: 'section-title'; with: 'Menus'.
		html paragraph: 'Lists of clickable actions.'.
		html paragraph: [ 
			html emphasis:
				'Note: The menu requires a non-static positioned parent element. Positioning options may not work properly if the menu is inside of a statically positioned node.' ].
		self renderBottomMenusOn: html.
		self renderTopMenusOn: html.
		]