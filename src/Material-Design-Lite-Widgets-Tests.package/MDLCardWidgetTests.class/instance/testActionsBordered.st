tests
testActionsBordered
	card actionsBordered.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__actions mdl-card--border"></div>'