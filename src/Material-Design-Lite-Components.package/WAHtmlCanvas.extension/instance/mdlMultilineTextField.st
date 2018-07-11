*Material-Design-Lite-Components
mdlMultilineTextField
	(self isOnGemstone or: [ SystemVersion current major < 6 ])
		ifTrue: [ self deprecated: 'Uses #mdlTextArea' ]
		ifFalse: [ self deprecated: 'Uses #mdlTextArea' transformWith: '`@receiver mdlMultilineTextField' -> '`@receiver mdlTextArea' ].
	^ self mdlTextArea