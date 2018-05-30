tests
testId
	self assert: [ :html | MDLPanelSwitcherButton new id: 'testId'; renderContentOn: html ] generatedIncludes: 'id="testId"'.