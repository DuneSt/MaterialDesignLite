code
expandableTextFieldCode
	^ 'html mdlTextFieldContainer expandable; with: [ 
	html mdlButton asLabel;icon; for: ''expandable-textfield''; with: [ html mdlIcon: ''search'' ].
	html mdlTextFieldExpandableHolder: [ 
		html mdlTextFieldInput id: ''expandable-textfield''; type: ''text''.
		html mdlTextFieldLabel for: ''expandable-textfield''; with: ''Expandable Input'' ] ]'