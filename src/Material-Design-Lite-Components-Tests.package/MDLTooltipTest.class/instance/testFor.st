tests
testFor
	self
		assert: [ :html | 
			html mdlTooltip
				for: html nextId;
				with: 'test' ]
		generates: '<span class="mdl-tooltip" for="id1">test</span>'