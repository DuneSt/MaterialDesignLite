rendering
renderListItem: item indentedBy: indentation on: html
	html
		listItem: [ 
			self renderItemContentOf: item indentedBy: indentation on: html.
			self renderSublistOf: (self childrenBlock value: item) indentedBy: indentation on: html ]