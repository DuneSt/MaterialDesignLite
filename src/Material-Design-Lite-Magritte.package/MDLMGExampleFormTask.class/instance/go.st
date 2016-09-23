running
go
	| chosenForm formChooser chosenFormAnswer |
	formChooser := self call: self formChooser.
	chosenForm := (self createFormBasedOn: formChooser).
	
	chosenFormAnswer := self call: chosenForm.
	chosenFormAnswer notNil
		ifTrue: [  ]
		ifFalse: [   ]