magritte descriptions
layoutStyleDescription
	<magritteDescription>
	^ MASingleOptionDescription new 
		label: 'Layout styles';
		accessor: #layoutStyle;
		options: self layoutStyles;
		componentClass: MDLMARadioGroupComponent;
		beRequired;
		yourself