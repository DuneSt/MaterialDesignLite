rendering
renderPagesButtonsOn: html
	self pagesButtonsToRender
		do: [ :int | 
			self updateBlock
				ifNil: [ html anchor
						class: 'mdl-color-text--accent mdl-pagination__current' if: self currentPage = int;
						callback: [ self currentPage: int ];
						with: int ]
				ifNotNil: [ :blk | 
					html button
						class: 'mdl-color-text--accent mdl-pagination__current' if: self currentPage = int;
						onClick: (self jsAjaxPageChangedCallback: [ self currentPage: int ] on: html);
						with: int ] ]