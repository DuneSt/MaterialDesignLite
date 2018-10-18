"
Description
--------------------

Illustrate the use of the resizable right panel that is by default folded.
"
Class {
	#name : #MDLExampleComponentWithRightPanelFolded,
	#superclass : #MDLExampleComponentWithRightPanel,
	#category : 'Material-Design-Lite-Demo-Utils'
}

{ #category : #accessing }
MDLExampleComponentWithRightPanelFolded >> browserClass [
	"I should return an html class specific to the browser to prefix generated ids and classes for the HTML."

	^ 'mdl-extension-example2'
]

{ #category : #components }
MDLExampleComponentWithRightPanelFolded >> defaultFoldButton [
	^ (MDLFoldButton for: '#' , self rightPanelId)
		fold;
		yourself
]
