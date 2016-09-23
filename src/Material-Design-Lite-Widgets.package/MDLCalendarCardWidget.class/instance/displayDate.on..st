private-rendering
displayDate: aDate on: html
	html mdlButton
		class:
			(aDate = calendar currentDate
				ifTrue: [ 'active' ]);
		class:
			(aDate month = calendar currentDate month
				ifFalse: [ 'disabled' ]);
		rippleEffect;
		icon;
		onClick: (self scriptUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString