tests
testTooltipNotRenderedIfNil
	self deny: [ :html | MDLPanelSwitcherButton new renderContentOn: html ] generatedIncludes: 'mdl-tooltip'