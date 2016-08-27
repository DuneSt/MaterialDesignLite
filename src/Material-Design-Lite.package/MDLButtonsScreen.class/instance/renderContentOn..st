rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 with: 'Buttons'.
			html paragraph: 'Variations on Material Design buttons.'. 
			self renderColoredFabButtonsOn: html.
			self renderFabButtonsOn: html.
			self renderRaisedButtonsOn: html.
			self renderColoredButtonsOn: html.
			self renderFlatButtonsOn: html.
			self renderIconButtonsOn: html.
			self renderMiniFabButtonsOn: html.]