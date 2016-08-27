rendering
renderContentOn: html
	html mdlCheckboxContainer
		rippleEffectIf: rippleEffect;
		with: [ checkbox := html mdlCheckbox.
			self addCheckboxPropertiesToBrush: checkbox.
			html mdlCheckboxLabel: label ]