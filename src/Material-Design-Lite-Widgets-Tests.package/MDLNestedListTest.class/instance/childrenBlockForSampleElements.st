helpers
childrenBlockForSampleElements
	^ [ :each | self recursivelyFind: each in: self sampleElements ]