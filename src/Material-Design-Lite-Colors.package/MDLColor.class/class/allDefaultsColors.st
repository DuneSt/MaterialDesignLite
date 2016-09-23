accessing
allDefaultsColors
	^ (self class methodsInProtocol: #defaults) collect: [ :m | MDLColor perform: m selector ]