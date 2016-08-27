as yet unclassified
lighterCode
	| intCode |
	intCode := (self isAccentuated
		ifTrue: [ self code allButFirst ]
		ifFalse: [ self code ]) asInteger.
	^ (intCode > 100
		ifTrue: [ intCode - 100 ]
		ifFalse: [ intCode - 50 ]) asString asSymbol