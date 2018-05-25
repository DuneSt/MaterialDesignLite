tests
testTooltipRendering
	self
		assert: [ :html | 
			MDLPanelSwitcherButton new
				tooltip: 'test';
				renderTooltipFor: html nextId on: html ]
		generates: '<span class="mdl-tooltip mdl-tooltip--large" for="id1">test</span>'