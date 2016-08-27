rendering
renderListItem: item index: index indentedBy: indentation on: html
	| children |
	children := self childrenBlock value: item.
	html listItem
		class: #collapsed if: children notEmpty;
		attributeAt: #index put: index;
		with: [ 
					self
						renderItemContentOf: item
						index: index
						indentedBy: indentation
						on: html.
					self renderSublistOf: children indentedBy: indentation on: html ]