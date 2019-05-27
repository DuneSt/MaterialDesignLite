Class {
	#name : #MDLSliderTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLSliderTest >> testBareBrush [
	self assert: [ :html | html mdlSlider ] generates: '<input class="mdl-slider mdl-js-slider" type="range"/>'
]

{ #category : #tests }
MDLSliderTest >> testShowBounds [
	self assert: [ :html | html mdlSlider showBounds ] generates: '<input class="mdl-slider mdl-js-slider mdl-slider-bounds" type="range"/>'
]

{ #category : #tests }
MDLSliderTest >> testWithContent [
	"Not with this brush"
]
