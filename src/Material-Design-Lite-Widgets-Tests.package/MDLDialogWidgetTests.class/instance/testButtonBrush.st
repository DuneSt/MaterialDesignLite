tests
testButtonBrush
	self
		assert: [ :html | 
			dialog
				buttonBrush:
					(MDLButton new
						colored;
						yourself);
				buttonName: 'Test'.
			html render: dialog ]
		generatedIncludes: '<button class="mdl-button mdl-js-button mdl-button--colored mdl-button--raised mdl-js-ripple-effect" id="id1" type="button">Test</button>'