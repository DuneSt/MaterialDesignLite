private-rendering
displayDate: aDate on: html
	html mdlButton
		class:
			((aDate = Date today and: [ aDate ~= calendar currentDate ])
				ifTrue: [ 'mdl-color-text--primary' ]);
		class:
			(aDate = calendar currentDate
				ifTrue: [ 'mdl-color-text--primary-contrast mdl-color--primary' ]);
		class:
			(aDate month = calendar currentDate month
				ifFalse: [ 'disabled' ]);
		rippleEffect;
		icon;
		onClick: (self scriptUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString