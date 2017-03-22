rendering
renderMenuTooltipFor: anItem at: anId on: html
	| helpText |
	(self entryTooltip isNil or: [ self entryTooltip argumentCount = 1 and: [ (helpText := self entryTooltip value: anItem) isEmptyOrNil ] ]) ifTrue: [ ^ self ].
		
	html mdlTooltip
		large;
		for: anId;
		with:
				(self entryTooltip argumentCount = 1
						ifTrue: [ helpText ]
						ifFalse: [ self entryTooltip mdlCull: anItem cull: html ])