tests
testId
	self
		assert: [ :html | 
			html
				render:
					(MDLTabWidget new
						id: 'ThisIsAnIdTest';
						yourself) ]
		generatedIncludes: 'id="ThisIsAnIdTest"'