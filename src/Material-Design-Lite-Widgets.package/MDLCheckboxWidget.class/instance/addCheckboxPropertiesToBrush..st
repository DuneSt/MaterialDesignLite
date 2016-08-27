adding
addCheckboxPropertiesToBrush: aBrush
	checkboxProperties
		keysAndValuesDo: [ :key :values | aBrush perform: key withArguments: values ]