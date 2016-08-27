adding
addTextInputPropertiesToBrush: aBrush
	textInputProperties
		keysAndValuesDo: [ :aKey :aCollection | aBrush perform: aKey withArguments: aCollection ]