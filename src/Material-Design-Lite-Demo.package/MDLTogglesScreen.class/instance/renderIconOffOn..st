demos
renderIconOffOn: html
	html mdlIconToggleContainer
		rippleEffect;
		for: html nextId;
		with: [ html mdlIconToggle id: html lastId.
			html mdlIconToggleLabel: 'format_italic' ]