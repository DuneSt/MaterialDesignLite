"
Description
--------------------

Screen to render root dialog examples.
"
Class {
	#name : #MDLRootDialogScreen,
	#superclass : #MDLExtensionsDemo,
	#category : 'Material-Design-Lite-Demo-Extensions'
}

{ #category : #accessing }
MDLRootDialogScreen class >> description [
	^ 'This extension provides Traits to ease the use of MDL dialogs. The principle is to add an empty dialog at the root of the application, then open it through methods available on any Seaside brush and render the content via ajax. One Trait needs to be used on the root component of the web application to add an empty hidden dialog. A second Trait needs to be used by the components wanting to open a dialog and provide the necessary methods to open the root dialog and to fill its content with ajax.'
]

{ #category : #accessing }
MDLRootDialogScreen class >> icon [
	^ 'compdialogPng'
]

{ #category : #accessing }
MDLRootDialogScreen class >> title [
	^ 'Root dialog'
]

{ #category : #demos }
MDLRootDialogScreen >> renderRootDialogOn: html [
	"Since this extension uses Traits, this code is not really useful. R
	ead the code of MDLExampleRootDialogRoot and MDLExampleRootDialogUser to understand how to use the root dialog."

	html div
		shadow: 2;
		with: MDLExampleRootDialogRoot new
]

{ #category : #rendering }
MDLRootDialogScreen >> renderScreenContentOn: html [
	self render: self rootDialog fullWidth: true on: html
]

{ #category : #sections }
MDLRootDialogScreen >> rootDialog [
	^ OrderedDictionary new
		add: 'Root dialog' -> #renderRootDialogOn:;
		yourself
]

{ #category : #accessing }
MDLRootDialogScreen >> warningMessage [
	^ 'This extension is not available in the Gemstone version of this project. This is due to the lack of Traits on Gemstone. You can reproduce it by flattening the Traits of the project in your project.'
]
