"
Description
--------------------

I represent an abstract example screen for the demo application.

I have an iconUrl to help displaying it in the drawer.

Title, Description and Icon must be implemented in subclasses.
"
Class {
	#name : #MDLDemoScreen,
	#superclass : #MDLScreen,
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLDemoScreen class >> description [
	^ self comment
]

{ #category : #accessing }
MDLDemoScreen class >> icon [
	self subclassResponsibility 
]

{ #category : #accessing }
MDLDemoScreen class >> iconUrl [
	^ MDLDemoLibrary urlOf: self icon
]

{ #category : #accessing }
MDLDemoScreen class >> pathName [
	^ self title copyWithout: $ 
]

{ #category : #accessing }
MDLDemoScreen class >> title [
	"I should return the title of the component screen."

	^ self subclassResponsibility
]

{ #category : #accessing }
MDLDemoScreen >> description [
	^ self class description
]

{ #category : #accessing }
MDLDemoScreen >> pathName [
	^ self class pathName
]

{ #category : #rendering }
MDLDemoScreen >> render: componentsMap fullWidth: aBoolean on: html [
	html div
		class: 'snippet-group';
		class: 'is-full-width' if: aBoolean;
		with: [ html div
				class: 'snippet-header';
				with: [ html div
						class: 'snippet-demos';
						with: [ html div class: 'snippet-demo-padding'.
							componentsMap
								valuesDo: [ :symbol | 
									html div
										class: 'snippet-demo';
										with: [ html div
												class: 'snippet-demo-container';
												class: (symbol copyWithout: $:);
												with: [ self perform: symbol with: html ] ] ].
							html div class: 'snippet-demo-padding' ].
					html div
						class: 'snippet-captions';
						with: [ html div class: 'snippet-caption-padding'.
							componentsMap
								keysDo: [ :label | 
									html div
										class: 'snippet-caption';
										with: label ].
							html div class: 'snippet-caption-padding' ] ].
			html div
				class: 'snippet-code';
				with: [ componentsMap
						valuesDo: [ :symbol | 
							html
								preformatted: [ html code
										class: 'smalltalk';
										with: (self codeOf: symbol) ] ] ] ]
]

{ #category : #rendering }
MDLDemoScreen >> render: componentsMap on: html [
	self render: componentsMap fullWidth: false on: html
]

{ #category : #rendering }
MDLDemoScreen >> renderContentOn: html [
	html mdlGrid
		class: #'mdl-components__page';
		with: [ html
				mdlCell: [ html div
						class: 'component-title';
						mdlTypographyTextJustify;
						with: [ html heading
								level3;
								with: self title.
							html paragraph: self description.
							self renderWarningMessageOn: html ].
					self renderScreenContentOn: html ]
				size: 12 ]
]

{ #category : #rendering }
MDLDemoScreen >> renderScreenContentOn: html [
	self subclassResponsibility
]

{ #category : #rendering }
MDLDemoScreen >> renderTocOn: html [
	html div
		class: 'docs-toc';
		with: [ html unorderedList
				class: 'navigation';
				with: [ self sections
						keysAndValuesDo: [ :id :label | 
							html
								listItem: [ html anchor
										url: id;
										with: label ] ] ] ]
]

{ #category : #rendering }
MDLDemoScreen >> renderWarningMessageOn: html [
	self warningMessage ifNil: [ ^ self ].
	
	html div
		class: 'mdl-demo-warning';
		mdlTypographyBody2;
		with: 'Warning: ', self warningMessage
]

{ #category : #accessing }
MDLDemoScreen >> sections [
	"Sections serve when the demo page is too big and needs to be divided."

	^ OrderedDictionary new
]

{ #category : #accessing }
MDLDemoScreen >> title [
	^ self class title
]

{ #category : #accessing }
MDLDemoScreen >> warningMessage [
	"Potential warning message to display"

	^ nil
]
