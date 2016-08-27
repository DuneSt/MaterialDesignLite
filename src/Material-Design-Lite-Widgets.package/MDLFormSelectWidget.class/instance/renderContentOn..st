rendering
renderContentOn: html
	| buttonId hiddenInputId menuId |
	buttonId := html nextId.
	hiddenInputId := html nextId.
	menuId := html nextId.
	self renderHiddenInput: html withId: hiddenInputId.
	self renderButtonOn: html withId: buttonId.
	self renderTooltipOn: html forId: buttonId.
	self renderMenuOn: html withId: menuId buttonId: buttonId.
	html script: (self generateJavascriptForButtonId: buttonId menuId: menuId hiddenInputId: hiddenInputId)