accessing
defaultValueBasedOn: aLabelMap
	^ (self selectedObject ifNil: [ self possibilities ifEmpty: [ nil ] ifNotEmpty: [ self possibilities first ] ])
		ifNotNil: [ :obj | aLabelMap keyAtValue: obj ifAbsent: [ self error: 'The selected object is not in the possibilities collection.' ] ]