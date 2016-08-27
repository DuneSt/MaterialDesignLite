rendering
renderScreenContentOn: html
	html heading level5
		class: 'section-title';
		with: 'Badges'.
	html paragraph: 'Small status descriptors for UI elements.'.
	self renderIconBadgesOn: html.
	self renderTextBadgesOn: html