adding
addPropertiesToBrush
	brushProperties
		keysAndValuesDo: [ :aSymbol :arguments | brush perform: aSymbol withArguments: arguments ]