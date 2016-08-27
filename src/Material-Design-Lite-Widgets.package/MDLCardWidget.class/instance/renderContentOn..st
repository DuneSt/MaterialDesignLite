rendering
renderContentOn: html
	| card |
	card := html mdlCard.
	self addPropertiesToBrush: card.
	card
		shadow: shadow;
		style: 'margin: auto';
		with: [ self renderInnerWidgetsOn: html ]