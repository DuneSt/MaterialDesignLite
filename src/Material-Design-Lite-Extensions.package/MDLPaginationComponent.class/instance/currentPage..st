accessing
currentPage: anInteger
	(anInteger between: self minPage and: self numberOfPages)
		ifFalse: [ SubscriptOutOfBounds
				signalFor: anInteger
				lowerBound: self minPage
				upperBound: self numberOfPages
				in: self ].
	currentPage := anInteger