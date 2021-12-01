Extension { #name : #Collection }

{ #category : #'*Material-Design-Lite-Widgets' }
Collection >> selectMatchingFromMDLFilter: mdlFilter format: aFormatBlock with: aPattern [
	^ self
		select: [ :each | 
			mdlFilter
				formatedElement: (aFormatBlock value: each)
				matches: aPattern ]
]
