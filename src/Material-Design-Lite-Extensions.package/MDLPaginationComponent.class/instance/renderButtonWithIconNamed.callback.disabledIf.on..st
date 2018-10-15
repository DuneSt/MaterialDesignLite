rendering
renderButtonWithIconNamed: aSymbol callback: aBlock disabledIf: aBoolean on: html
	(self updateBlock isNil and: [ aBoolean not ])
		ifTrue: [ html mdlAnchorButton
				accentColor;
				callback: aBlock;
				icon: aSymbol ]
		ifFalse: [ html mdlButton
				accentColor;
				disabled: aBoolean;
				onClick: [ self jsAjaxPageChangedCallback: aBlock on: html ] if: aBoolean not;
				icon: aSymbol ]