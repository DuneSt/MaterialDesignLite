tests
testOnCompleteScript
	self
		assert: [ :html | 
			html
				render:
					(MDLFoldButton new
						divId: '#test';
						onCompleteScript: 'console.log(''test'')';
						yourself) ]
		generatedIncludes: 'console.log(''test'')'.
	self
		assert:
			((MDLFoldButton new
				divId: '#test';
				onCompleteScript: 'console.log(''test'')';
				yourself) showAndHide contents includesSubstring: 'console.log(''test'')')