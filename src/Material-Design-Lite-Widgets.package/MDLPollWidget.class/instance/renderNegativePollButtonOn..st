rendering
renderNegativePollButtonOn: html
	html mdlIconBadge
		overlap;
		dataBadge: model negativeCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				onClick: (self jsNegativeButtonClickedOn: html);
				icon: 'thumb_down' ]