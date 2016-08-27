rendering
renderScreenContentOn: html
	html unorderedList
		class: 'navigation';
		with: [ 
					html
						listItem: [ 
							html anchor
								url: '#checkbox-toggle';
								with: 'Checkbox' ].
					html
						listItem: [ 
							html anchor
								url: '#radiobutton-toggle';
								with: 'Radio button' ].
					html
						listItem: [ 
							html anchor
								url: '#icon-toggle';
								with: 'Icon toggle' ].
					html
						listItem: [ 
							html anchor
								url: '#switch-toggle';
								with: 'Switch' ] ].
	html anchor id: 'checkbox-toggle'.
	self renderCheckboxOn: html.
	html anchor id: 'radiobutton-toggle'.
	self renderRadioButtonOn: html.
	html anchor id: 'icon-toggle'.
	self renderIconToggleOn: html.
	html anchor id: 'switch-toggle'.
	self renderSwitchToggleOn: html