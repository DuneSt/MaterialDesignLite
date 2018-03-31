Description
--------------------

I am a brush to create a container for a radio button.

Example
--------------------

	html mdlRadioContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlRadioButton
				beChecked;
				value: '1';
				attributeAt: 'name' put: 'options';
				id: html lastId.
			html mdlRadioLabel: 'First' ]