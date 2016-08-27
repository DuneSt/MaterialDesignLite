rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 with: 'Lists'.
			html paragraph: 'Customizable scrollable lists.'.
			self renderSimpleListOn: html .
			self renderListWithIconsOn: html.
			self renderAvatarActionsListOn: html .
			self renderAvatarControlsListOn: html .
			self renderTwoLineListOn: html .
			self renderThreeLineListOn: html . ]