tests
testLabelFor
	select
		labelBlock: [ :number | 
			number = 5
				ifTrue: [ '0' ]
				ifFalse: [ (number - 1) greaseString ] ].
	self assert: (select labelFor: 5) equals: '0'.
	self assert: (select labelFor: 4) equals: '3'.
	select labelBlock: nil.
	self assert: (select labelFor: 5) equals: '5'.
	self assert: (select labelFor: 4) equals: '4'