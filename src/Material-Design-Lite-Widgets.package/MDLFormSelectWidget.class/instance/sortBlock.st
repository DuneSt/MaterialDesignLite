accessing
sortBlock
	^ sortBlock ifNil: [ sortBlock := [ :a :b | a <= b ] ]