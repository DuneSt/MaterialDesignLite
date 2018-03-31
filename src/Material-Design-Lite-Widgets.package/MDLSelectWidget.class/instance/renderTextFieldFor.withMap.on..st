rendering
renderTextFieldFor: anId withMap: aLabelMap on: html
	| textField |
	(textField := html mdlTextFieldInput)
		id: anId;
		value: (self defaultValueBasedOn: aLabelMap);
		disabled: self possibilities isEmpty;
		readonly: true;
		tabIndex: '-1';
		callback: [ :input | self callback ifNotNil: [ :cb | cb value: (aLabelMap at: input) ] ];
		onChange: 'submit()' if: self autoSubmit;
		type: 'text'.
	self customizationBlock ifNotNil: [ :bl | bl mdlCull: textField cull: html ]