Class {
	#name : #MDLMGExampleFormTask,
	#superclass : #WATask,
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #accessing }
MDLMGExampleFormTask class >> label [
	^ 'Magritte Form example'
]

{ #category : #private }
MDLMGExampleFormTask >> createFormBasedOn: formChooser [
	| theForm |
	theForm := MDLMGExampleFormDescription new asComponent.
	
	formChooser isValidationMessageStyleTop ifTrue: [
		theForm addDecoration: MAValidationDecoration new ].
	
	theForm
		addDecoration: 
			(MDLMAFormDecoration buttons: (Array with: #cancel with: #save) 
				yourself);
		yourself.
	
	formChooser isLayoutStyleFormInline ifTrue: [
		"inline styles look better without comments"
		theForm magritteDescription do: [ :aDescription |
			aDescription comment: nil ] ].
	
	^ theForm
]

{ #category : #private }
MDLMGExampleFormTask >> formChooser [
	^ MDLMGExampleFormChooser new asComponent
		addDecoration: (MDLMAFormDecoration buttons: (Array with: #save -> 'Create a new form'));
		yourself
]

{ #category : #running }
MDLMGExampleFormTask >> go [
	| chosenForm formChooser chosenFormAnswer |
	formChooser := self call: self formChooser.
	chosenForm := (self createFormBasedOn: formChooser).
	
	chosenFormAnswer := self call: chosenForm.
	chosenFormAnswer notNil
		ifTrue: [  ]
		ifFalse: [   ]
]
