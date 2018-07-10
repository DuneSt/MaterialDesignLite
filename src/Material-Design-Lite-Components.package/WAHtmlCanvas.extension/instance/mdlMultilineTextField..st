*Material-Design-Lite-Components
mdlMultilineTextField: text
	SystemVersion current major > 5
		ifTrue: [ self deprecated: 'Uses #mdlTextArea:' transformWith: '`@receiver mdlMultilineTextField: `@statements1' -> '`@receiver mdlTextArea: `@statements1' ]
		ifFalse: [ self deprecated: 'Uses #mdlTextArea:' ].
	^ self mdlTextArea: text