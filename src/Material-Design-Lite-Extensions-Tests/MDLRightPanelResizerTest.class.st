Class {
	#name : #MDLRightPanelResizerTest,
	#superclass : #MDLAbstractSeasideTestCase,
	#category : 'Material-Design-Lite-Extensions-Tests-Panels'
}

{ #category : #tests }
MDLRightPanelResizerTest >> testPanelIsInitialized [
	self assert: [ :html | html render: MDLRightPanelResizer new ] generatedIncludes: 'initRightResizer()'
]

{ #category : #tests }
MDLRightPanelResizerTest >> testRendering [
	self assert: [ :html | html render: MDLRightPanelResizer new ] generatedIncludes: 'class="resizer-right resizer"'
]
