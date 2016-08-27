accessing
sortBlock
	^ sortBlock ifNil: [ :a :b | a <= b ]