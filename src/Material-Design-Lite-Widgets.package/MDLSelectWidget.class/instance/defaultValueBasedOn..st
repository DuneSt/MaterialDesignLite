accessing
defaultValueBasedOn: aLabelMap
	(self selectedObject isNil and: [ self possibilities isEmpty ]) ifTrue: [ ^ nil ].
	
	^ aLabelMap
		keyAtValue: (self selectedObject ifNil: [ self possibilities first ])
		ifAbsent: [ self error: 'The selected object is not in the possibilities collection.' ]