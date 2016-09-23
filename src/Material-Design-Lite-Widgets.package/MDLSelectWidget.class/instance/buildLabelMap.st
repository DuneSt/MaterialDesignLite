labelMap - generation
buildLabelMap
	^ self possibilities
		inject: OrderedDictionary new
		into: [ :dico :elem | self addLabelMapEntryFor: elem version: 0 into: dico ]