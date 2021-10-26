Class {
	#name : #MDLNestedListItemRenderAjaxStrategy,
	#superclass : #MDLNestedListItemRenderAbstractStrategy,
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #'as yet unclassified' }
MDLNestedListItemRenderAjaxStrategy >> asAjaxStrategy [
	^ self 
]

{ #category : #'as yet unclassified' }
MDLNestedListItemRenderAjaxStrategy >> getHtmlElementForNode: aNode inDiv: div index: anIndex indentedBy: anInteger on: html [ 
	^ html div
		onClick: (self actionBlock cull: aNode element).
]

{ #category : #'as yet unclassified' }
MDLNestedListItemRenderAjaxStrategy >> initialize [
	super initialize.
	self isJsAction: true
]
