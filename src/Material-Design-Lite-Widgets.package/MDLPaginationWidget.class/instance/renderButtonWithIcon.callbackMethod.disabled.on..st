rendering
renderButtonWithIcon: aString callbackMethod: aSymbol disabled: aBoolean on: html
	html mdlButton
		icon;
		rippleEffect;
		class:
			(aBoolean
				ifTrue: [ 'disable' ]);
		onClick:
			(aBoolean
				ifFalse: [ html jQuery ajax
						callback: [ self perform: aSymbol ];
						onComplete: (self onCompleteScriptOn: html) ]);
		with: [ html mdlIcon: aString ]