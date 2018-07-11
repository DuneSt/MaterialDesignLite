rendering
renderPossibilitiesFor: anId withMap: aLabelMap on: html
	aLabelMap ifEmpty: [ ^ self ].
	
	html mdlMenu
		for: anId;
		bottomLeft;
		with: [ (self sortBlock ifNil: [ aLabelMap keys ] ifNotNil: [ :blk | aLabelMap keys sort: blk ])
				do: [ :label | 
					html mdlMenuItem
						id: (self idForMenuItemLabelled: label inSelectWith: anId);
						with: label ] ]