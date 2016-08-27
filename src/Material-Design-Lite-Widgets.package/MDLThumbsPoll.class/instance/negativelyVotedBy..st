hooks
negativelyVotedBy: anObject
	(self isPolledBy: anObject)
		ifTrue: [ (votes at: anObject) = #positivePoll
				ifTrue: [ self decreasePositiveCount.
					self increaseNegativeCount.
					votes at: anObject put: #negativePoll ]
				ifFalse: [ self decreaseNegativeCount.
					votes removeKey: anObject ] ]
		ifFalse: [ votes at: anObject put: #negativePoll.
			self increaseNegativeCount ]