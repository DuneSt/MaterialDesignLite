private-rendering
displayDate: aDate on: html
	html mdlButton
		class: 'active' if: aDate = calendar currentDate;
		class: 'disabled' if: aDate month ~= calendar currentDate month;
		rippleEffect;
		icon;
		onClick: (self jsUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString