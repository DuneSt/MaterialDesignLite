rendering
renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html
	html mdlButton
		colored;
		icon;
		disabled: isDisabled;
		onClick:
				(isDisabled
						ifFalse: [ 
							html jQuery ajax
								callback: [ self perform: aMethod ];
								onComplete: (self ajaxUpdateScriptFrom: html) ]);
		with: [ html mdlIcon: aSymbol ]