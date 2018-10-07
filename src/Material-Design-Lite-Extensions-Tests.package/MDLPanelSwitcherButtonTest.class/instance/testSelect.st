tests
testSelect
	self deny: [ :html | MDLPanelSwitcherButton new renderContentOn: html ] generatedIncludes: 'class="panel-switcher-button__content panel-switcher-selected"'.
	self assert: [ :html | MDLPanelSwitcherButton new select; renderContentOn: html ] generatedIncludes: 'class="panel-switcher-button__content panel-switcher-selected"'