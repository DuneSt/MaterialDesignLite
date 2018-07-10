tests
testDialogBrush
	self
		assert: [ :html | 
			dialog
				dialogBrush:
					(MDLDialog new
						class: 'TestClass';
						yourself);
				buttonName: 'Test'.
			html render: dialog ]
		generatedIncludes: '<dialog class="mdl-dialog TestClass"'