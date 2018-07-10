tests
testShadow
	"Test than a card can have a shadow."
	
	card shadow: 2.
	self assert: [ :html | html render: card ] generates: '<div class="mdl-card mdl-shadow--2dp mdl-card-widget"></div>'.
	card shadow: 24.
	self assert: [ :html | html render: card ] generates: '<div class="mdl-card mdl-shadow--24dp mdl-card-widget"></div>'