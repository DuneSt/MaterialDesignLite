rendering
renderTextFieldFor: anId withMap: aLabelMap on: html
	html mdlTextFieldInput
		id: anId;
		value: (self defaultValueBasedOn: aLabelMap);
		disabled: self possibilities isEmpty;
		readonly: true;
		tabIndex: '-1';
		callback: [ :input | self callback ifNotNil: [ :cb | cb value: (aLabelMap at: input) ] ];
		type: 'text'