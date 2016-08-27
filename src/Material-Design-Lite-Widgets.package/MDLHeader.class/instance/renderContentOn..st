rendering
renderContentOn: html
	self isCollapsible
		ifTrue: [ self renderCollapsibleHeaderOn: html ]
		ifFalse: [ self renderFixedHeaderOn: html ]