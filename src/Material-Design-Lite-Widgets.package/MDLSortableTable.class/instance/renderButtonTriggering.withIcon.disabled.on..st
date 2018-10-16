rendering
renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html
	html mdlButton
		bePush;
		colored;
		icon;
		disabled: isDisabled;
		onClick: [ html jQuery ajax
				callback: [ self perform: aMethod ];
				onSuccess: (self ajaxUpdateScriptFrom: html) ]
			if: isDisabled not;
		with: [ html mdlIcon: aSymbol ]