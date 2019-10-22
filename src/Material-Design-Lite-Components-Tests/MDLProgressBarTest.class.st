Class {
	#name : #MDLProgressBarTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Loading'
}

{ #category : #tests }
MDLProgressBarTest >> testBareBrush [
	self assert: [ :html | html mdlProgressBar ] generates: '<div class="mdl-progress mdl-js-progress"></div>'
]

{ #category : #tests }
MDLProgressBarTest >> testIndeterminate [
	self assert: [ :html | html mdlProgressBar indeterminate ] generates: '<div class="mdl-progress mdl-js-progress mdl-progress__indeterminate"></div>'
]

{ #category : #tests }
MDLProgressBarTest >> testWithContent [
	"Should not have content inside."
]
