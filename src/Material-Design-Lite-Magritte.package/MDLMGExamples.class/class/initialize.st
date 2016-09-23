initialization
initialize
	| application |
	application := WAAdmin register: self asApplicationAt: 'MDL-Magritte-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	