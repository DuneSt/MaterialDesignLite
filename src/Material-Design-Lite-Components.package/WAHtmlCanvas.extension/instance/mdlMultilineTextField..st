*Material-Design-Lite-Components
mdlMultilineTextField: text
	(self isOnGemstone or: [ SystemVersion current major < 6 ])
		ifTrue: [ self deprecated: 'Uses #mdlTextArea:' ]
		ifFalse: [ self deprecated: 'Uses #mdlTextArea:' transformWith: '`@receiver mdlMultilineTextField: `@statements1' -> '`@receiver mdlTextArea: `@statements1' ].
	^ self mdlTextArea: text