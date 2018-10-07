tests
testJsOnComplete
	self
		assert: [ :html | 
			MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')';
				renderContentOn: html ]
		generatedIncludes: 'function(){console.log(''test'')}'.
	self
		assert: [ :html | 
			MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')' js;
				renderContentOn: html ]
		generatedIncludes: 'function(){console.log(''test'')}'.
	self
		assert:
			((MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')';
				jsOnComplete) isKindOf: JSStream).
	self
		assert:
			((MDLPanelSwitcherButton new
				onCompleteJs: 'console.log(''test'')' js;
				jsOnComplete) isKindOf: JSStream)