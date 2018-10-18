"
Form decoration for a description component
"
Class {
	#name : #MDLMAFormDecoration,
	#superclass : #MAFormDecoration,
	#instVars : [
		'title'
	],
	#category : 'Material-Design-Lite-Magritte-Core'
}

{ #category : #rendering }
MDLMAFormDecoration >> renderButtonsOn: html [
	html div
		class: 'mdl-typography--text-right';
		with: [ 
					self buttons
						do: [ :each | 
							(each == buttons last
								ifTrue: [ 
									html mdlButton
										raised;
										primaryColor ]
								ifFalse: [ html mdlButton ])
								style: 'margin: 5px;';
								accessKey: each value first;
								callback: [ self execute: each key ];
								text: each value ] ]
]

{ #category : #rendering }
MDLMAFormDecoration >> renderContentOn: html [
	html form
		class: 'magritte';
		multipart: self requiresMultipartForm;
		defaultAction: [ self execute: self default ];
		with: [ self renderNextOn: html.
			self renderButtonsOn: html ]
]
