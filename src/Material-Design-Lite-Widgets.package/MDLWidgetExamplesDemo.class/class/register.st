tools registry
register
	"self register"

	| app |
	app := self registerToDevelopment: 'MDLWidgetExamples'.
	app addLibrary: MDLDemoLibrary.
	^ app