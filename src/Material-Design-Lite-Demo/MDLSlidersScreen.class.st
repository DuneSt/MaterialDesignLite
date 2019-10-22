"
Selecting a value out of a range.
"
Class {
	#name : #MDLSlidersScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLSlidersScreen class >> icon [
	^ 'compslidersPng'
]

{ #category : #accessing }
MDLSlidersScreen class >> title [
	^ 'Sliders'
]

{ #category : #sections }
MDLSlidersScreen >> advanceSlider [
	^ OrderedDictionary new
		add: 'Advance slider' -> #renderAdvenceSliderOn:;
		yourself
]

{ #category : #demos }
MDLSlidersScreen >> renderAdvenceSliderOn: html [
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
				showBounds. "<- This option does not work on all browsers currently."
			html output
				id: outputId;
				for: html lastId;
				with: 1000 ]
]

{ #category : #demos }
MDLSlidersScreen >> renderDefaultSliderOn: html [
	html mdlSlider
		min: 0;
		max: 10000;
		value: 0
]

{ #category : #demos }
MDLSlidersScreen >> renderDisabledSliderOn: html [
	html mdlSlider
		min: 0;
		max: 100;
		value: 30;
		disabled
]

{ #category : #rendering }
MDLSlidersScreen >> renderScreenContentOn: html [
	self render: self simpleSliders on: html.
	html small: 'Warning: Showing bonds might not work on all browsers.'.
	self render: self advanceSlider on: html
]

{ #category : #demos }
MDLSlidersScreen >> renderStartingValueSliderOn: html [
	html mdlSlider
		min: 0;
		max: 100;
		value: 75
]

{ #category : #sections }
MDLSlidersScreen >> simpleSliders [
	^ OrderedDictionary new
		add: 'Default Slider' -> #renderDefaultSliderOn:;
		add: 'Starting value' -> #renderStartingValueSliderOn:;
		add: 'Disabled slider' -> #renderDisabledSliderOn:;
		yourself
]
