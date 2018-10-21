"
Description
--------------------

Screen to render resizable left panels examples.
"
Class {
	#name : #MDLLeftPanelScreen,
	#superclass : #MDLExtensionsDemo,
	#category : #'Material-Design-Lite-Demo-Extensions'
}

{ #category : #accessing }
MDLLeftPanelScreen class >> description [
	^ 'Simple component to add a resizable left panel to a browser'
]

{ #category : #accessing }
MDLLeftPanelScreen class >> icon [
	^ 'extLeftPanelPng'
]

{ #category : #accessing }
MDLLeftPanelScreen class >> title [
	^ 'Left panel'
]

{ #category : #sections }
MDLLeftPanelScreen >> leftPanel [
	^ OrderedDictionary new
		add: 'Left panel' -> #renderLeftPanelOn:;
		yourself
]

{ #category : #sections }
MDLLeftPanelScreen >> leftPanelWithResizer [
	^ OrderedDictionary new
		add: 'Left panel with resizer' -> #renderLeftPanelWithResizerOn:;
		yourself
]

{ #category : #demos }
MDLLeftPanelScreen >> renderLeftPanelOn: html [
	html div
		shadow: 2;
		style: 'height: 300px; display: flex;';
		with: [ html leftPanel
				style: 'height: 100%; width: 300px;';
				with:
					((MDLNestedList
						elements: WAObject allSubclasses
						children: [ :classOrMethod | 
					classOrMethod isClass
						ifTrue: [ classOrMethod methods ]
						ifFalse: [ #() ] ])
						format: #name;
						yourself).
			html div style: 'background-color: #ECEFF1; flex-grow: 1;' ]
]

{ #category : #demos }
MDLLeftPanelScreen >> renderLeftPanelWithResizerOn: html [
	html div
		shadow: 2;
		style: 'height: 300px; display: flex;';
		with: [ html leftPanel
				style: 'height: 100%; width: 300px;';
				with: [ html
						render:
							((MDLNestedList
								elements: WAObject allSubclasses
								children: [ :classOrMethod | 
							classOrMethod isClass
								ifTrue: [ classOrMethod methods ]
								ifFalse: [ #() ] ])
								format: #name;
								yourself);
						leftPanelResizer ].
			html div style: 'background-color: #ECEFF1; flex-grow: 1;' ]
]

{ #category : #rendering }
MDLLeftPanelScreen >> renderScreenContentOn: html [
	self
		render: self leftPanel fullWidth: true on: html;
		render: self leftPanelWithResizer fullWidth: true on: html
]
