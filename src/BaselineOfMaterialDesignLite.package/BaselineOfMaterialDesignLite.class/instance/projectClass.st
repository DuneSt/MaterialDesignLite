accessing
projectClass
	self flag: #clean.	"This is a hack that need to be remove after the default version of Metacello includes Cypress suport."
	^ [ #MetacelloCypressBaselineProject asClass ]
		on: NotFound
		do: [ Metacello new
				baseline: 'Metacello';
				repository: 'github://dalehenrich/metacello-work:master/repository';
				get.
			Metacello new
				baseline: 'Metacello';
				repository: 'github://dalehenrich/metacello-work:master/repository';
				onConflict: [ :ex | ex allow ];
				load.
			self projectClass ]