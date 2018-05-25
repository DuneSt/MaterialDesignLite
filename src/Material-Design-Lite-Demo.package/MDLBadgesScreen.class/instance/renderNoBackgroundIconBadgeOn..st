demos
renderNoBackgroundIconBadgeOn: html
	html mdlIconBadge
		dataBadge: (Character codePoint: 9829) asString;
		overlap;
		noBackground;
		with: 'account_box'