Class {
	#name : #MDLMGExampleInformsConfirms,
	#superclass : #WAComponent,
	#instVars : [
		'informMessage',
		'confirmMessage'
	],
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #accessing }
MDLMGExampleInformsConfirms class >> label [
	^ [ :html | html text: 'Bootstrap versions of Seaside''s '; code: 'WAComponent>>#inform'; text: ', '; code: 'WAComponent>>#confirm' ]
]

{ #category : #accessing }
MDLMGExampleInformsConfirms >> confirmMessage [
	^ confirmMessage ifNil: [ 'Does this colour suit me?' ]
]

{ #category : #accessing }
MDLMGExampleInformsConfirms >> confirmMessage: anObject [
	confirmMessage := anObject
]

{ #category : #accessing }
MDLMGExampleInformsConfirms >> confirms [
	^ Array with: #twbsConfirmInfo: -> 'btn-info' with: #twbsConfirmSuccess: -> 'btn-success'  with: #twbsConfirmError: -> 'btn-danger'

]

{ #category : #accessing }
MDLMGExampleInformsConfirms >> informMessage [
	^ informMessage ifNil: [ informMessage := 'A really important message' ]
]

{ #category : #accessing }
MDLMGExampleInformsConfirms >> informMessage: anObject [
	informMessage := anObject
]

{ #category : #accessing }
MDLMGExampleInformsConfirms >> informs [
	^ Array with: #twbsInform: -> 'btn-info' with: #twbsInformSuccess: -> 'btn-success'  with: #twbsInformError: -> 'btn-danger'

]

{ #category : #rendering }
MDLMGExampleInformsConfirms >> renderContentOn: html [
	html form: [
		html label: [
			html text: 'Inform Message: '.
		html textInput 
			on: #informMessage of: self ].
		
		html div: [
			self informs do: [ :each |
				html button
					class: 'btn';
					class: each value;
					callback: [ self perform: each key with: [ :r | r strong: 'Message: '; text: self informMessage ] ];
					with: each key ] 
				separatedBy: [ html space ] ].
			
		html break.
		html label: [
			html text: 'Confirm Message: '.
		html textInput 
			on: #confirmMessage of: self ].
			
		html div: [
			self confirms do: [ :each |
				html button
					class: 'btn';
					class: each value;
					callback: [ self perform: each key with: [ :r | r strong: 'Message: '; text: self confirmMessage ] ];
					with: each key ] 
				separatedBy: [ html space ] ].

		html div 
			class: 'form-actions'; 
			with: [
				html button
					class: 'btn';
					callback: [ self answer ];
					with: 'Return' ] ] 
]
