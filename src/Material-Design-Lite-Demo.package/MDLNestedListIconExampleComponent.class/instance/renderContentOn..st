rendering
renderContentOn: html
	html
		mdlIcon:
			(self isRepresentingClass
				ifTrue: [ 'copyright' ]
				ifFalse: [ 'label_outline' ]).
	html text: '  '