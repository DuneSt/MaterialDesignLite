private
demoRows

	| rows |
	
	rows := OrderedCollection new.
	Collection withAllSubclasses doWithIndex: [ :each :index |
		rows add: (MDLMGExampleFormDescription new
			name: each name;
			number: index ;
			bePositive: index odd ;
			yourself ) ].
	^ rows

