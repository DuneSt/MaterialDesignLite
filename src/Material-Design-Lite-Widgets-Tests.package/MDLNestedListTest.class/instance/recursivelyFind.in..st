helpers
recursivelyFind: each in: dictionary
	^ dictionary
		at: each
		ifPresent: [ :res | 
			res isDictionary
				ifTrue: [ res keys ]
				ifFalse: [ res ] ]
		ifAbsent: [ dictionary
				valuesDo: [ :coll | 
					coll isDictionary
						ifTrue: [ (self recursivelyFind: each in: coll) ifNotEmpty: [ :res | ^ res ] ] ].
			#() ]