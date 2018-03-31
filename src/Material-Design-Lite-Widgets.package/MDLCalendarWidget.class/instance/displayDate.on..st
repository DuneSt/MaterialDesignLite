private-rendering
displayDate: aDate on: html
	html mdlButton
		class: 'mdl-color-text--primary' if: (aDate = Date today and: [ aDate ~= calendar currentDate ]);
		class: 'mdl-color-text--primary-contrast mdl-color--primary' if: aDate = calendar currentDate;
		class: 'disabled' if: aDate month ~= calendar currentDate month;
		rippleEffect;
		icon;
		onClick: (self jsUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString