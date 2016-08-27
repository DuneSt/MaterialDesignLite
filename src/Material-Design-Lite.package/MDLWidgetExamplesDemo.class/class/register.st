tools registry
register
	"self register"

	| app |
	app := self registerToDevelopment: 'MDLWidgetExamples'.
	app
		addLibrary: MDLLibrary;
		addLibrary: MDLDemoLibrary;
		addLibrary: MDLWidgetsDemoLibrary.
	^ app