actions
addPropertiesToBrush: aBrush
	properties
		keysAndValuesDo: [ :aSymbol :property | aBrush perform: aSymbol with: property ]