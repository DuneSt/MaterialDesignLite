"
Description
--------------------

The Material Design Lite (MDL) slider component is an enhanced version of the new HTML5 <input type=""range""> element. A slider consists of a horizontal line upon which sits a small, movable disc (the thumb) and, typically, text that clearly communicates a value that will be set when the user moves it.

Example
--------------------

	html mdlSlider
		min: 0;
		max: 100;
		value: 75
"
Class {
	#name : #MDLSlider,
	#superclass : #WARangeInputTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLSlider >> initialize [
	super initialize.
	self class: 'mdl-slider'.
	self class: 'mdl-js-slider'.
]

{ #category : #options }
MDLSlider >> showBounds [
	"This option currently does not work on some browsers"
	
	self class: 'mdl-slider-bounds'
]
