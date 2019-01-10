Extension { #name : #MDLDialog }

{ #category : #'*Material-Design-Lite-Extensions' }
MDLDialog class >> jsInitializeAndOpenRootDialog [
	^ self jsInitializeRootDialog , self jsOpenRootDialog
]

{ #category : #'*Material-Design-Lite-Extensions' }
MDLDialog class >> jsInitializeRootDialog [
	^ ('newDialog("' , self rootDialogId , '");setVerticalPositionOf($("#' , self rootDialogId , '"));componentHandler.upgradeDom()') js
]

{ #category : #'*Material-Design-Lite-Extensions' }
MDLDialog class >> jsOpenRootDialog [
	^ 'MaterialDesignLite.openRootDialog();' js
]

{ #category : #'*Material-Design-Lite-Extensions' }
MDLDialog class >> rootDialogCloseId [
	"I am the id of the root dialog."

	^ #'root-dialog__close'
]

{ #category : #'*Material-Design-Lite-Extensions' }
MDLDialog class >> rootDialogId [
	"I am the id of the root dialog."

	^ #'root-dialog'
]

{ #category : #'*Material-Design-Lite-Extensions' }
MDLDialog class >> rootDialogOpenId [
	"I am the id of the root dialog."

	^ #'root-dialog__open'
]
