as yet unclassified
renderShadowedCardOn: html
	html mdlCard
		style: 'margin: auto';
		shadow: shadow;
		with: [ self renderInnerWidgetsOn: html ]