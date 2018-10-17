rendering
renderPaginationComponentOn: html
	html div
		class: 'mdl-pagination__container';
		with: [ html div
				class: 'mdl-pagination__pages';
				with: [ self renderPreviousButtonsOn: html.
					html div
						class: 'mdl-pagination__pages-buttons';
						with: [ self renderFirstDisabledButtonOn: html.
							self renderPagesButtonsOn: html.
							self renderLastDisabledButtonOn: html ].
					self renderNextButtonsOn: html ].
			html form: self pageSelectionComponent ]