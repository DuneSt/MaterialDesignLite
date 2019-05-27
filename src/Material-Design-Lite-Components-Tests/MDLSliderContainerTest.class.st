Class {
	#name : #MDLSliderContainerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLSliderContainerTest >> testBareBrush [
	self assert: [ :html | html mdlSliderContainer ] generates: '<div class="mdl-slider-container"></div>'
]

{ #category : #tests }
MDLSliderContainerTest >> testWithContent [
	self assert: [ :html | html mdlSliderContainer: 'test' ] generates: '<div class="mdl-slider-container">test</div>'
]
