"
Description
--------------------

I am a component used to illustrate the use of the resizable right panel with tabs.

To use it you need to:
- Make your component use the TRightTabsPanelBrowser trait.
- Implement the #browserClass method. It should return a symbol to use to prefix html classes.
- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.
- Implement the instance variables, getter and setters for the toolbar and right panel components.
- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.
- Call #initialijeRightPanel from the initialize method of the component.
- Call #renderRightPanelOn: during the rendering phase of the component.
"
Class {
	#name : #MDLExampleComponentWithRightPanel,
	#superclass : #WAComponent,
	#traits : 'TRightTabsPanelBrowser',
	#classTraits : 'TRightTabsPanelBrowser classTrait',
	#instVars : [
		'toolbar',
		'rightPanel'
	],
	#category : #'Material-Design-Lite-Demo-Utils'
}

{ #category : #accessing }
MDLExampleComponentWithRightPanel >> browserClass [
	"I should return an html class specific to the browser to prefix generated ids and classes for the HTML."

	^ 'mdl-extension-example'
]

{ #category : #components }
MDLExampleComponentWithRightPanel >> defaultFoldButton [
	^ MDLFoldButton for: '#' , self rightPanelId
]

{ #category : #components }
MDLExampleComponentWithRightPanel >> defaultToolbar [
	^ MDLVerticalToolbar
		buttons:
			{self defaultFoldButton.
			(self switcherButton: 'Tab1' perform: #setDefaultRightPanel).
			(self switcherButton: 'Tab2' perform: #setTab2RightPanel)}
]

{ #category : #initialization }
MDLExampleComponentWithRightPanel >> initialize [
	super initialize.
	self initializeRightPanel
]

{ #category : #rendering }
MDLExampleComponentWithRightPanel >> renderContentOn: html [
	html div style: 'flex-grow: 1;'.
	self renderRightPanelOn: html
]

{ #category : #accessing }
MDLExampleComponentWithRightPanel >> rightPanel [
	^ rightPanel
]

{ #category : #accessing }
MDLExampleComponentWithRightPanel >> rightPanel: aComponent [
	rightPanel := aComponent
]

{ #category : #components }
MDLExampleComponentWithRightPanel >> setDefaultRightPanel [
	self rightPanel: MDLExampleRightPanel1 new
]

{ #category : #components }
MDLExampleComponentWithRightPanel >> setTab2RightPanel [
	self rightPanel: MDLExampleRightPanel2 new
]

{ #category : #accessing }
MDLExampleComponentWithRightPanel >> toolbar [
	^ toolbar
]

{ #category : #accessing }
MDLExampleComponentWithRightPanel >> toolbar: aComponent [
	toolbar := aComponent
]
