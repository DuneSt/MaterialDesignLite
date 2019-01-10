"
I'm representing dialogs screen
"
Class {
	#name : #MDLDialogsScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLDialogsScreen class >> description [
	^ 'Modal windows for dedicated user input.'
]

{ #category : #accessing }
MDLDialogsScreen class >> icon [
		^ 'compdialogPng'
]

{ #category : #accessing }
MDLDialogsScreen class >> title [
	^ 'Dialog'
]

{ #category : #sections }
MDLDialogsScreen >> complexDialog [
	^ OrderedDictionary new
		add: 'Dialog with buttons' -> #renderComplexDialogOn:;
		yourself
]

{ #category : #demos }
MDLDialogsScreen >> renderComplexDialogOn: html [
	| idButtonOpen idButtonClose |
	html mdlButton
		openDialogWithId: (idButtonOpen := html nextId); "This will not generate an id on the button and allow you to have multiple buttons to open the same dialog."
		bePush;
		raised;
		rippleEffect;
		with: 'Show dialog'.
		
	html mdlDialog
		openButtonId: idButtonOpen;
		closeButtonId: (idButtonClose := html nextId);
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].
			html
				mdlDialogActions: [ html mdlButton: 'Agree'.
					html mdlButton
						id: idButtonClose;
						bePush;
						with: 'Disagree' ] ]
]

{ #category : #rendering }
MDLDialogsScreen >> renderScreenContentOn: html [
	self
		render: self simpleDialog on: html;
		render: self complexDialog on: html
]

{ #category : #demos }
MDLDialogsScreen >> renderSimpleDialogOn: html [
	html mdlButton
		id: html nextId;
		bePush;
		raised;
		rippleEffect;
		with: 'Show second dialog'.
		
	html mdlDialog
		openButtonId: html lastId;
		with: [ 
			html mdlDialogTitle: 'Good job !'.
			html mdlDialogContent: [ html paragraph: 'You managed to open the dialog' ] ]
]

{ #category : #sections }
MDLDialogsScreen >> simpleDialog [
	^ OrderedDictionary new
		add: 'Simple Dialog' -> #renderSimpleDialogOn:;
		yourself
]
