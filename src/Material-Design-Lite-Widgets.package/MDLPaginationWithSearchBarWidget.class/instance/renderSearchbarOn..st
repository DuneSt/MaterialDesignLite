private-rendering
renderSearchbarOn: html
	| inputId |
	html mdlTextFieldContainer
		class: 'mdl-pagination-widget-searchbar';
		floatingLabel;
		with: [ html mdlTextFieldLabel
				for: (inputId := html nextId);
				with: searchLabel.
			html mdlTextFieldInput
				id: inputId;
				callback: [ :aString | self updateItemsMatching: aString ];
				onKeyUp:
					(html jQuery ajax
						serializeThis;
						onComplete:
							((html jQuery id: paginationWidgetId) load
								html: [ :ajaxHtml | self renderTableOn: ajaxHtml ])) ]