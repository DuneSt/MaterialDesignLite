tests
testNegativelyVotedIncreaseNegativeCount
	| object oldNegativeCount |
	object := Object new.
	oldNegativeCount := thumbsPoll negativeCount.
	thumbsPoll negativelyVotedBy: object.
	self assert: thumbsPoll negativeCount equals: oldNegativeCount + 1