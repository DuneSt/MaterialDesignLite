accessing
sortBlock
	^ sortBlock ifNil: [ sortBlock := [ :a :b | a value <= b value ] ]