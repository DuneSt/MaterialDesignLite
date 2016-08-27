rendering
renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html
	html anchor
		callback: [ self perform: aMethod ];
		with: [ 
					html mdlButton
						colored;
						icon;
						disabled: isDisabled;
						with: [ html mdlIcon: aSymbol ] ]