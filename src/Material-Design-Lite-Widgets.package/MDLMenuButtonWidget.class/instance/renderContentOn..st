rendering
renderContentOn: html
	| buttonId |
	buttonId := html nextId.
	self renderButtonOn: html withId: buttonId.
	self renderMenuOn: html withId: buttonId.
	self renderTooltipOn: html withId: buttonId.