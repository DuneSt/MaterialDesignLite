magritte descriptions
numberDescription
	<magritteDescription>
	^ MASingleOptionDescription new
		priority: 30;
		label: 'Numbers';
		accessor: #number;
		options: (0 to: 10);
		comment: 'select your favourite number';
		addCondition: [ :v | v ~= 0 ] labelled: 'sorry we are not permitting zero to be favourite';
		addCondition: [ :v | v ~= 1 ] labelled: 'sorry we are not permitting one to be favourite';
		componentClass: MDLMASelectListRowsComponent;
		beRequired;
		yourself