tests
testTextIsGenerated
	self assert: [ :html | MDLPanelSwitcherButton new text: 'Option'; renderContentOn: html ] generatedIncludes: '>Option</div>'.