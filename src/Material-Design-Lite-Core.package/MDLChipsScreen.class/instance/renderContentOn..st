rendering
renderContentOn: html
	html div
		class: 'screen-content';
		with: [ 
					html heading level5
						class: 'section-title';
						with: 'Chips'.
					html paragraph: 'Chips represent complex entities in small blocks, such as a contact.'.
					self render: self simpleChips on: html.
					self render: self imageChips on: html ]