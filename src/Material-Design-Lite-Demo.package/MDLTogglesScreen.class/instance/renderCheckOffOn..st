demos
renderCheckOffOn: html
	html mdlCheckboxContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlCheckbox
				value: false;
				id: html lastId.
			html mdlCheckboxLabel: 'Checkbox' ]