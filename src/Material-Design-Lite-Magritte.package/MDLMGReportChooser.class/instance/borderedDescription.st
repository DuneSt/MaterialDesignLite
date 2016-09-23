magrittes-descriptions
borderedDescription
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Bordered';
		group: 'Bootstrap options' ;
		accessor: #bordered;
		comment: 'Rounds corners and adds outer border';
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself