rendering
renderContentOn: html
	id := 'progressBar' , html nextId.
	self flag: #todo.	"This need some cleaning."
	"The id should be configurable."
	"The style should be in a css file"
	html mdlProgressBar
		style:
			'margin: auto;'
				,
					(self hyde
						ifTrue: [ 'display: none;' ]
						ifFalse: [ '' ]);
		id: id.
	self hyde
		ifFalse: [ self progressScript: html ]