Class {
	#name : #MDLLeftPanelResizerTest,
	#superclass : #SGTAbstractSeasideTestCase,
	#category : #'Material-Design-Lite-Extensions-Tests-Panels'
}

{ #category : #tests }
MDLLeftPanelResizerTest >> testPanelIsInitialized [
	self assert: [ :html | html render: MDLLeftPanelResizer new ] generatedIncludes: 'initLeftResizer()'
]

{ #category : #tests }
MDLLeftPanelResizerTest >> testRendering [
	self assert: [ :html | html render: MDLLeftPanelResizer new ] generatedIncludes: 'class="resizer-left resizer"'
]
