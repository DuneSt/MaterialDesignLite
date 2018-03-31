Description
--------------------

I am a brush to create a container for an icon toggle.

Example
--------------------

	html mdlIconToggleContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlIconToggle
				value: true;
				id: html lastId.
			html mdlIconToggleLabel: 'format_bold' ]