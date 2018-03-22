updating
displayInstanceOf: aComponentClass
	self componentToDisplay: (self componentInstances at: aComponentClass ifAbsentPut: [ aComponentClass new ])