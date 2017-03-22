rendering
renderListTree: aTree index: index indentedBy: indentation on: html
	html listItem
		class: #expanded if: aTree selectedBranch;
		class: #collapsed if: aTree selectedBranch not;
		class: #hasChildren if: aTree children isNotEmpty;
		attributeAt: #index put: index;
		with: [ 
					self
						renderItemContentOf: aTree
						index: index
						indentedBy: indentation
						on: html.
					aTree selectedBranch
						ifTrue: [ 
							self
								renderSublistOf: aTree children
								parentIndex: index
								indentedBy: indentation
								on: html ] ]