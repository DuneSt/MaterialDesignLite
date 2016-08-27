magritte descriptions
validationMessageStyleDescription
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Error message styles';
		accessor: #validationMessageStyle;
		options: self validationMessageStyles;
		componentClass: MDLMASelectListRowsComponent;
		beRequired;
		yourself