magrittes-descriptions
stripedDescription
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Striped';
		accessor: #striped;
		comment: 'Adds light gray background color to odd rows';
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself