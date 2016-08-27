running
go
	| chosenForm formChooser chosenFormAnswer |
	formChooser := self call: self formChooser.
	chosenForm := (self createFormBasedOn: formChooser).
	
	chosenFormAnswer := self call: chosenForm.
	chosenFormAnswer notNil
		ifTrue: [ self twbsInformSuccess: [ :r | r strong: 'Well done'; text: ' you have managed to survive this sample''s arbitary validation.' ] ]
		ifFalse: [ self twbsInformError: [ :r | r strong: 'Cancelled'; text: ' Oh well you can always try again to see if you can work-through this sample''s arbitary validation.' ] ]