"
Description
--------------------

Screen to render resizable right panel with tabs examples.
"
Class {
	#name : #MDLRightTabsPanelScreen,
	#superclass : #MDLExtensionsDemo,
	#category : 'Material-Design-Lite-Demo-Extensions'
}

{ #category : #accessing }
MDLRightTabsPanelScreen class >> description [
	^ 'Extension to create a browser with a resizable right panel with tabs.'
]

{ #category : #accessing }
MDLRightTabsPanelScreen class >> icon [
	^ 'extRightPanelPng'
]

{ #category : #accessing }
MDLRightTabsPanelScreen class >> title [
	^ 'Right panel with tabs'
]

{ #category : #demos }
MDLRightTabsPanelScreen >> renderRightPanelFoldedOn: html [
	"The code is not really useful here since this extension it managed by Traits.
	
	Please, browse the code of the example class bellow in your Seaside image."
	
	html div
		shadow: 2;
		style: 'height: 500px; display: flex;';
		with: MDLExampleComponentWithRightPanelFolded new
]

{ #category : #demos }
MDLRightTabsPanelScreen >> renderRightPanelOn: html [
	"The code is not really useful here since this extension it managed by Traits.
	
	Please, browse the code of the example class bellow in your Seaside image.
	
	To make a Seaside component use this feature you need to:
- Make your component use the TRightTabsPanelBrowser trait.
- Implement the #browserClass method. It should return a symbol to use to prefix html classes.
- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.
- Implement the instance variables, getter and setters for the toolbar and right panel components.
- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.
- Call #initialijeRightPanel from the initialize method of the component.
- Call #renderRightPanelOn: during the rendering phase of the component"
	
	html div
		shadow: 2;
		style: 'height: 500px; display: flex;';
		with: MDLExampleComponentWithRightPanel new
]

{ #category : #rendering }
MDLRightTabsPanelScreen >> renderScreenContentOn: html [
	self
		render: self rightPanel fullWidth: true on: html;
		render: self rightPanelFolded fullWidth: true on: html
]

{ #category : #sections }
MDLRightTabsPanelScreen >> rightPanel [
	^ OrderedDictionary new
		add: 'Right panel resizable with tabs' -> #renderRightPanelOn:;
		yourself
]

{ #category : #sections }
MDLRightTabsPanelScreen >> rightPanelFolded [
	^ OrderedDictionary new
		add: 'Right panel folded' -> #renderRightPanelFoldedOn:;
		yourself
]

{ #category : #accessing }
MDLRightTabsPanelScreen >> warningMessage [
	^ 'This extension is not available in the Gemstone version of this project. This is due to the lack of Traits on Gemstone. You can reproduce it by flattening the Traits of the project in your project.'
]
