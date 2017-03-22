actions
addPropertiesToBrush: aBrush
	self flag: #thisIsBad.	"This is bad because if a simgle argument should be a collection this will broke. The solution is that ALL widgets should have properties as an array of arguments. This will change the API of the widget thus it should be done for the V2 of MDL."
	properties
		keysAndValuesDo: [ :aSymbol :property | 
			property isArray
				ifTrue: [ aBrush perform: aSymbol withArguments: property ]
				ifFalse: [ aBrush perform: aSymbol with: property ] ]