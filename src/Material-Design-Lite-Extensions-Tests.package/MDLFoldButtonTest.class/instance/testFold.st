tests
testFold
	self
		assert: [ :html | 
			html
				render:
					(MDLFoldButton new
						divId: '#test';
						fold;
						yourself) ]
		generatedIncludes: 'document.getElementById(''test'').style.width=''0'';'