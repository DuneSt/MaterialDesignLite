rendering
renderEditorOn: html
	html mdlCheckboxContainer
		for: self labelId;
		with: [ 
					html mdlCheckbox
						id: self labelId;
						disabled: self isReadonly;
						on: #value of: self.
					html mdlCheckboxLabel: self magritteDescription checkboxLabel ]