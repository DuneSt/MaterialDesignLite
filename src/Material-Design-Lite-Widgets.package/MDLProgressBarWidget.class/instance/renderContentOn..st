rendering
renderContentOn: html
	self ensureId: html.
	self flag: #todo.	"This need some cleaning."
	"The style should be in a css file"
	html mdlProgressBar
		style: 'margin: auto;' , (self hide ifTrue: [ 'display: none;' ] ifFalse: [ '' ]);
		id: id.
	self hide ifFalse: [ self progressScript: html ]