rendering
renderButtonWithIcon: aString callbackMethod: aSymbol disabled: aBoolean on: html
	html mdlButton
		icon;
		rippleEffect;
		disabled: aBoolean;
		onClick: [ html jQuery ajax
				callback: [ self perform: aSymbol ];
				onComplete: (self onCompleteScriptOn: html) ]
			if: aBoolean not;
		with: [ html mdlIcon: aString ]