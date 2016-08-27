rendering
renderContentOn: html
	| card |
	card := html mdlCard.
	self addPropertiesToBrush: card.
	card
		shadow: shadow;
		with: [ self renderInnerWidgetsOn: html ]