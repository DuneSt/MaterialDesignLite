Class {
	#name : #MDLListIconComponentTest,
	#superclass : #MDLAbstractSeasideTestCase,
	#category : 'Material-Design-Lite-Widgets-Tests-List'
}

{ #category : #tests }
MDLListIconComponentTest >> testHelpText [
	self
		assert: [ :html | html render: (MDLListIconComponent named: 'Test' helpText: 'This is an help text') ]
		generatedIncludes: '<span class="mdl-tooltip mdl-tooltip--large" for="id1">This is an help text</span>'
]

{ #category : #tests }
MDLListIconComponentTest >> testNoHelpTextGeneratesNoTooltip [
	self
		deny: [ :html | 
			html
				render:
					(MDLListIconComponent new
						label: 'Test';
						yourself) ]
		generatedIncludes: 'mdl-tooltip'
]
