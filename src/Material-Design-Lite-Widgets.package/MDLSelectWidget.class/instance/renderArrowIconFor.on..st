rendering
renderArrowIconFor: anId on: html
	html label
		for: anId;
		with: [ html mdlIcon
				toggle;
				with: #keyboard_arrow_down ]