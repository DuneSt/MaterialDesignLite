rendering
renderButtonWithIcon: aString callbackMethod: aSymbol disabled: aBoolean on: html
	html mdlButton
		icon;
		rippleEffect;
		disabled: aBoolean;
		onClick:
				(aBoolean
						ifFalse: [ 
							html jQuery ajax
								callback: [ self perform: aSymbol ];
								onComplete: (self onCompleteScriptOn: html) ]);
		with: [ html mdlIcon: aString ]