rendering
renderScreenContentOn: html
	self renderSimpleListOn: html.
	self renderIconsListOn: html.
	self renderAvatarActionsListOn: html.
	self renderAvatarControlsListOn: html.
	self renderTwoLineListOn: html.
	self renderThreeLineListOn: html