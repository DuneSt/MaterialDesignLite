"
Example based on twitter bootstrap's example
"
Class {
	#name : #MDLMGExamples,
	#superclass : #WAComponent,
	#instVars : [
		'menu'
	],
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #initialization }
MDLMGExamples class >> initialize [
	| application |
	application := WAAdmin register: self asApplicationAt: 'MDL-Magritte-examples'.
	application preferenceAt: #scriptGeneratorClass put: JQScriptGenerator	
]

{ #category : #hooks }
MDLMGExamples >> children [
	^ Array with: self menu
]

{ #category : #accessing }
MDLMGExamples >> menu [
	^ menu ifNil: [ menu := MDLMGExampleMenu new ]
]

{ #category : #rendering }
MDLMGExamples >> renderContentOn: html [
	html mdlCard
		style: 'overflow: visible; margin: auto; padding: 15px;';
		shadow: 2;
		with: [ html mdlCardTitle: [ html mdlCardTitleText: 'Material Design with Magritte' level: 2 ].
			html render: self menu ]
]

{ #category : #updating }
MDLMGExamples >> style [
	^'
	body {
  		padding: 20px;
  		background: #fafafa;
  		position: relative;
	}
	
	.mdl-card {
  		width: 512px;
	}', MDLMAReport cssStylesheet
]

{ #category : #updating }
MDLMGExamples >> updateRoot: anHtmlRoot [
	super updateRoot: anHtmlRoot.
	
	JQDevelopmentLibrary default updateRoot: anHtmlRoot.
	
	anHtmlRoot title: 'MDL-Magritte examples'.
	
	anHtmlRoot beHtml5.
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.1.3/material.indigo-pink.min.css').
	anHtmlRoot script url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.1.3/material.min.js').
	anHtmlRoot stylesheet url: (WAUrl absolute: 'https://fonts.googleapis.com/icon?family=Material+Icons').

]
