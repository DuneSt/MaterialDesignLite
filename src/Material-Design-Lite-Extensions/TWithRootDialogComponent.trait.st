"
Description
--------------------

This Trait is part of the root dialog system. 

This system help to manage dialogs inside a MDL application. The principle is to have one empty dialog always rendered and to have helpers in HTMLTags to open it and show contents loaded via ajax.

This trait need to be used by components wanting to open/close/manage the dialog. 
"
Trait {
	#name : #TWithRootDialogComponent,
	#category : 'Material-Design-Lite-Extensions-RootDialog'
}

{ #category : #accessing }
TWithRootDialogComponent classSide >> rootDialogCloseId [
	"I am the id to put on a button to close the root dialog"

	^ MDLDialog rootDialogCloseId
]

{ #category : #accessing }
TWithRootDialogComponent classSide >> rootDialogId [
	"I am the id of the root dialog."

	^ MDLDialog rootDialogId
]

{ #category : #accessing }
TWithRootDialogComponent classSide >> rootDialogOpenId [
	"I am the Id to put on a button in order to open the root dialog."

	^ MDLDialog rootDialogOpenId
]

{ #category : #accessing }
TWithRootDialogComponent >> rootDialogCloseId [
	"I am the id to put on a button to close the root dialog.
	This is static information available on class side"

	^ self class rootDialogCloseId
]

{ #category : #accessing }
TWithRootDialogComponent >> rootDialogId [
	"I am the id of the root dialog.
	This is static information available on class side"

	^ self class rootDialogId
]

{ #category : #accessing }
TWithRootDialogComponent >> rootDialogOpenId [
	"I am the Id to put on a button in order to open the root dialog."

	^ self class rootDialogOpenId
]
