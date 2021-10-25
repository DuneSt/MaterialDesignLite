Class {
	#name : #MDLNestedListItemRenderAnchorStrategy,
	#superclass : #MDLNestedListItemRenderAbstractStrategy,
	#category : #'Material-Design-Lite-Widgets-List'
}

{ #category : #'as yet unclassified' }
MDLNestedListItemRenderAnchorStrategy >> asAjaxStrategy [
	^ MDLNestedListItemRenderAjaxStrategy new
		isJsAction: isJsAction;
		actionBlock: actionBlock;
		helpBlock: helpBlock;
		childrenBlock: childrenBlock;
		childrenSortBlock: childrenSortBlock;
		entryCustomizationHook: entryCustomizationHook;
		format: format;
		iconBlock: iconBlock;
		rightIconBlock: rightIconBlock;
		yourself
]

{ #category : #'as yet unclassified' }
MDLNestedListItemRenderAnchorStrategy >> getHtmlElementForNode: aNode inDiv: div index: anIndex indentedBy: anInteger on: html [
	| anchor |
	anchor := html anchor.
	self actionBlock
		ifNotNil: [ self isJsAction
				ifTrue: [ anchor
						onClick:
							(self
								overwriteOnCompleteForNode: aNode
								inDiv: div
								index: anIndex
								indentedBy: anInteger
								on: html) ]
				ifFalse: [ anchor callback: [ self actionBlock value: aNode element ] ] ].
	^ anchor
]

{ #category : #rendering }
MDLNestedListItemRenderAnchorStrategy >> overwriteOnCompleteForNode: aNode inDiv: div index: anIndex indentedBy: anInteger on: html [
	| onClickValue selfOnComplete finalOnComplete |
	onClickValue := self actionBlock value: aNode element.
	selfOnComplete := (html jQuery id: div) load
		html: [ :ajaxHtml | 
			self
				renderItemContentOf: aNode
				index: anIndex
				indentedBy: anInteger
				on: ajaxHtml ].
	[ finalOnComplete :=  selfOnComplete onComplete: (onClickValue options
		at: 'complete' )]
		on: GRError  do: [ finalOnComplete := selfOnComplete ].
		onClickValue onComplete: finalOnComplete.
		^ onClickValue 
]
