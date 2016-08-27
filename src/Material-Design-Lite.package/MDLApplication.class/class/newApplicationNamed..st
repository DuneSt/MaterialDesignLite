instance creation
newApplicationNamed: aName
	| app |
	app := self new applicationName: aName.
	WAAdmin register: self asApplicationAt: aName.
	^ app