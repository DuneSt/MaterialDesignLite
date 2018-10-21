"
Description
--------------------

I am a brush to create a container for a slider.

Example
--------------------

	html
		mdlSliderContainer: [ 
			| outputId |
			outputId := html nextId.
			html label
				for: html nextId;
				with: 'A better example'.
			html mdlIcon: #hourglass_empty.
			html mdlSlider
				onInput: outputId , '.value = ' , html lastId , '.value';
				id: html lastId;
				min: 0;
				max: 10000;
				step: 100;
				value: 1000;
				showBounds. ""<- This option does not work on all browsers currently.""
			html output
				id: outputId;
				for: html lastId;
				with: 1000 ]
"
Class {
	#name : #MDLSliderContainer,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Forms'
}

{ #category : #initialization }
MDLSliderContainer >> initialize [
	super initialize.
	self class: #'mdl-slider-container'
]
