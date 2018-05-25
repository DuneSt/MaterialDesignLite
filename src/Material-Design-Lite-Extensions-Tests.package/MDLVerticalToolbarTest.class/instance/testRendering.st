tests
testRendering
	self
		assert: [ :html | 
			html
				render:
					(MDLVerticalToolbar
						buttons:
							{(MDLFoldButton for: '#id').
							MDLPanelSwitcherButton new}) ]
		generatedIncludes: 'class="vertical-toolbar"'