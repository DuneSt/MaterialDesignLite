tests
testNoHelpTextGeneratesNoTooltip
	self
		deny: [ :html | 
			html
				render:
					(MDLListIconComponent new
						label: 'Test';
						yourself) ]
		generatedIncludes: 'mdl-tooltip'