demos
renderExpandingTextFieldOn: html
	html mdlTextFieldContainer
		expandable;
		style: 'width: 200px;';
		with: [ html mdlButton
				labelIcon;
				for: html nextId;
				with: [ html mdlIcon: 'search' ].
			html
				mdlTextFieldExpandableHolder: [ html mdlTextFieldInput id: html lastId.
					html mdlTextFieldLabel
						for: html lastId;
						with: 'Expandable Input' ] ]