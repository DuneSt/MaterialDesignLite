"
Description
--------------------

I am a component to illustrate the use of the root dialog. 
"
Class {
	#name : #MDLExampleRootDialogUser,
	#superclass : #WAComponent,
	#traits : 'TWithRootDialogComponent',
	#classTraits : 'TWithRootDialogComponent classTrait',
	#category : #'Material-Design-Lite-Demo-Utils'
}

{ #category : #rendering }
MDLExampleRootDialogUser >> renderButtonExampleOn: html [
	html
		preformatted: [ html code
				class: 'smalltalk';
				with:
					'html mdlButton
	raised;
	accentColor;
	openDialogWithId: self rootDialogOpenId;
	onClickUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
	with: ''Open dialog''' ].
	html mdlButton
		raised;
		accentColor;
		openDialogWithId: self rootDialogOpenId;
		onClickUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
		with: 'Open dialog'
]

{ #category : #rendering }
MDLExampleRootDialogUser >> renderChipExampleOn: html [
	html
		preformatted: [ html code
				class: 'smalltalk';
				with:
					'html mdlChip
	onClickOpenAndUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
	with: [ html mdlChipContact
			hexColor: ''009587'';
			with: ''C''.
		html mdlChipText: ''Click me'' ]' ].
	html mdlChip
		onClickOpenAndUpdateRootDialogWith: [ :r | self renderDialogOn: r ];
		with: [ html mdlChipContact
				hexColor: '009587';
				with: 'C'.
			html mdlChipText: 'Click me' ]
]

{ #category : #rendering }
MDLExampleRootDialogUser >> renderContentOn: html [
	html
		mdlGrid: [ html mdlCell: [ self renderButtonExampleOn: html ] size: 6.
			html mdlCell: [ self renderChipExampleOn: html ] size: 6 ]
]

{ #category : #rendering }
MDLExampleRootDialogUser >> renderDialogOn: html [
	html mdlDialogTitle: 'Good job !'.
	html mdlDialogContent: [ html paragraph: 'You have not managed to click the button' ].
	html
		mdlDialogActions: [ html mdlButton: 'Agree'.
			html mdlButton
				id: self rootDialogCloseId;
				with: 'Disagree' ]
]
