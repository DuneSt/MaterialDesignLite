rendering
renderScreenContentOn: html
	html paragraph: 'Chips represent complex entities in small blocks, such as a contact.'.
	self render: self simpleChips on: html.
	self render: self imageChips on: html