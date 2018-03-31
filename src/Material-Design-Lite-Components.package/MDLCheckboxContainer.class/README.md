Description
--------------------

I am a brush to create a checkbox container

Example
--------------------

	html mdlCheckboxContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlCheckbox
				value: true;
				id: html lastId.
			html mdlCheckboxLabel: 'Checkbox' ]