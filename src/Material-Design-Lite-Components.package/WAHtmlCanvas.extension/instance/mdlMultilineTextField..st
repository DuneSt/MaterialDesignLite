*Material-Design-Lite-Components
mdlMultilineTextField: text
	self deprecated: 'Uses #mdlTextArea:' transformWith: '`@receiver mdlMultilineTextField: `@statements1' -> '`@receiver mdlTextArea: `@statements1'.
	^ self mdlTextArea: text