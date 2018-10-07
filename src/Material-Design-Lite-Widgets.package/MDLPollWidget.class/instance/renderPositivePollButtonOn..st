rendering
renderPositivePollButtonOn: html
	html mdlIconBadge
		overlap;
		dataBadge: model positiveCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				icon;
				onClick: (self jsPositiveButtonClickedOn: html);
				icon: 'thumb_up' ]