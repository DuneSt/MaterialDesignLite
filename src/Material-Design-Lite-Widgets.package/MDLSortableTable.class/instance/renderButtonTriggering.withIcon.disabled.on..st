rendering
renderButtonTriggering: aMethod withIcon: aSymbol disabled: isDisabled on: html
	html mdlButton
		bePush;
		colored;
		icon;
		disabled: isDisabled;
		class: aMethod; "This class is here to help with functional testing."
		onClick:
				(html jQuery ajax
						callback: [ self perform: aMethod ];
						onSuccess: (self ajaxUpdateScriptFrom: html))
			if: isDisabled not;
		with: [ html mdlIcon: aSymbol ]