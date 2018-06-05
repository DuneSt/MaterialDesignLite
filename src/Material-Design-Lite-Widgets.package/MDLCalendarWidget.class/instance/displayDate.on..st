private-rendering
displayDate: aDate on: html
	html mdlButton
		class: 'mdl-color-text--primary' if: (self isTodayAndNotSelected: aDate);
		class: 'mdl-color-text--primary-contrast mdl-color--primary' if: (self selectedDateIs: aDate);
		class: 'disabled' if: (self isInCurrentMonth: aDate) not;
		rippleEffect;
		icon;
		onClick: (self jsUpdateDate: aDate on: html);
		with: aDate dayOfMonth greaseString