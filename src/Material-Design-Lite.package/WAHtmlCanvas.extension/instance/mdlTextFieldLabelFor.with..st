*Material-Design-Lite
mdlTextFieldLabelFor: anId with: aBlock
	^ (self brush: MDLTextFieldLabel new)
		for: anId;
		with: aBlock;
		yourself