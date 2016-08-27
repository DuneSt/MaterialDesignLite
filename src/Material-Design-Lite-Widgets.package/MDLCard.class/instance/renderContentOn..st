rendering
renderContentOn: html
	shadow ifNil: [ self renderCardOn: html ] ifNotNil: [ self renderShadowedCardOn: html ]