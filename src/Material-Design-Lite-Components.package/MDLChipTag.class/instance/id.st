accessing
id
	^ self attributes at: 'id' ifAbsentPut: [ canvas nextId ]