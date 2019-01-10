Extension { #name : #WATagBrush }

{ #category : #'*Material-Design-Lite-Extensions' }
WATagBrush >> onClickOpenAndUpdateRootDialogWith: aBlock [
	self
		openDialogWithId: MDLDialog rootDialogOpenId;
		onClickUpdateRootDialogWith: aBlock
]

{ #category : #'*Material-Design-Lite-Extensions' }
WATagBrush >> onClickUpdateRootDialogWith: aBlock [
	self
		onClick:
			((canvas jQuery id: MDLDialog rootDialogId) load
				html: aBlock;
				onComplete: MDLDialog jsInitializeRootDialog)
]

{ #category : #'*Material-Design-Lite-Extensions' }
WATagBrush >> onClickUpdateRootDialogWith: aBlock if: aBoolean [
	aBoolean
		ifTrue: [ self onClickUpdateRootDialogWith: aBlock ]
]
