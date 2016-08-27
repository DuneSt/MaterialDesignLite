*Material-Design-Lite
mdlTextFieldInputId: anId type: aType pattern: aPattern
	^ (self brush: MDLTextFieldInput new)
		id: anId;
		type: aType;
		pattern: aPattern;
		yourself