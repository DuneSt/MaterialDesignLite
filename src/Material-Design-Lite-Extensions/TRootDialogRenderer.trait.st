"
Description
--------------------

This Trait is part of the root dialog system. 

This system help to manage dialogs inside a MDL application. The principle is to have one empty dialog always rendered and to have helpers in HTMLTags to open it and show contents loaded via ajax.

This trait need to be used by the root component of the application.
"
Trait {
	#name : #TRootDialogRenderer,
	#traits : 'TWithRootDialogComponent',
	#classTraits : 'TWithRootDialogComponent classTrait',
	#category : 'Material-Design-Lite-Extensions-RootDialog'
}

{ #category : #rendering }
TRootDialogRenderer >> renderEmptyGenericDialogOn: html [
	"This method need to be called at the end of the root #renderContentOn:"
	
	html mdlDialog
		id: self rootDialogId;
		openButtonId: self rootDialogOpenId;
		closeButtonId: self rootDialogCloseId
]
