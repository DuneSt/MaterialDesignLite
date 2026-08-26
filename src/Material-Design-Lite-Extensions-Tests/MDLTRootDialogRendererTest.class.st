Class {
	#name : 'MDLTRootDialogRendererTest',
	#superclass : 'SGTAbstractSeasideTestCase',
	#category : 'Material-Design-Lite-Extensions-Tests-RootDialog',
	#package : 'Material-Design-Lite-Extensions-Tests',
	#tag : 'RootDialog'
}

{ #category : 'tests' }
MDLTRootDialogRendererTest >> testRenderEmptyGenericDialogOn [
	"This component is not available on Gemstone"
	self isOnGemstone ifTrue: [ ^ self ].
	
	self
		assert: [ :html | MDLMockRootDialogRenderer new renderEmptyGenericDialogOn: html ]
		generatedIncludesAll: #('mdl-dialog' 'data-openbtnid="root-dialog__open"' 'data-closebtnid="root-dialog__close"')
]
