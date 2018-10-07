tests
testSelectedObject
	menu selectedObject: 'material'.
	self assert: [ :html | html render: menu ] generatedIncludes: '>material<i class="material-icons">arrow_drop_down</i>'.
	
	menu selectedObject: 'lite'.
	self assert: [ :html | html render: menu ] generatedIncludes: '>lite<i class="material-icons">arrow_drop_down</i>'