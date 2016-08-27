hooks
positivelyVotedBy: anObject
	(self isPolledBy: anObject)
		ifTrue: [ (votes at: anObject) = #positivePoll
				ifTrue: [ self decreasePositiveCount.
					self removeRatedUser: anObject ]
				ifFalse: [ self decreaseNegativeCount.
					self increasePositiveCount.
					votes at: anObject put: #positivePoll ] ]
		ifFalse: [ votes at: anObject put: #positivePoll.
			self increasePositiveCount ]