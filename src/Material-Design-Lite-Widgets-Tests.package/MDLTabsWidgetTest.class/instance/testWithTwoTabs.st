tests
testWithTwoTabs
	self
		assert: [ :html | 
			html
				render:
					(MDLTabWidget new
						addTabNamed: 'Tab label' content: 'Tab content';
						addTabNamed: 'Tab label 2' content: 'Tab content 2';
						yourself) ]
		generatedIncludesAll: #('<a class="mdl-tabs__tab is-active" href="#id2">Tab label</a>' '<div class="mdl-tabs__panel is-active" id="id2">Tab content</div>' '<a class="mdl-tabs__tab" href="#id3">Tab label 2</a>' '<div class="mdl-tabs__panel" id="id3">Tab content 2</div>')