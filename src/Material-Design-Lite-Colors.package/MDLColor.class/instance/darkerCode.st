transformations
darkerCode
	| intCode |
	intCode := (self isAccentuated
		ifTrue: [ self code allButFirst ]
		ifFalse: [ self code ]) asInteger.
	^ (intCode + 100) asString asSymbol