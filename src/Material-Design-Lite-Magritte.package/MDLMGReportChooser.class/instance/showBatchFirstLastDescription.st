magrittes-descriptions
showBatchFirstLastDescription
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Show first/last';
		accessor: #showBatchFirstLast;
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself