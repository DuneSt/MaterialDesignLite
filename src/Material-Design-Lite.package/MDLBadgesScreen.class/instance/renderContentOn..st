rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ html heading level5 class: 'section-title';with: 'Badges'.
			html paragraph: 'Small status descriptors for UI elements.'.
			self renderRegularBadgeOn: html.
			html paragraph: 'You can plug a badge to any element :'.
			self renderBadgeOverButtonOn: html.
			html paragraph: 'The badge can be rendered whithout background :'.
			self renderBadgeWithoutBackgroundOn: html ]