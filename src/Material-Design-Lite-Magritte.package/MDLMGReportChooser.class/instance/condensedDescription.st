magrittes-descriptions
condensedDescription
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Condensed';
		group: 'Bootstrap options' ;
		accessor: #condensed;
		comment: 'Cuts vertical padding in half';
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself