tests
testAddTabNamedContent
	self
		assert: [ :html | 
			html
				render:
					(MDLTabWidget new
						addTabNamed: 'Tab label' content: 'Tab content';
						yourself) ]
		generatedIncludesAll: #('<a class="mdl-tabs__tab is-active" href="#id2">Tab label</a>' '<div class="mdl-tabs__panel is-active" id="id2">Tab content</div>')