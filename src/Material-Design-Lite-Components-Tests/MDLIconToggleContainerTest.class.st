Class {
	#name : #MDLIconToggleContainerTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLIconToggleContainerTest >> testBareBrush [
	self assert: [ :html | html mdlIconToggleContainer ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle"></label>'
]

{ #category : #tests }
MDLIconToggleContainerTest >> testFor [
	self assert: [ :html | html mdlIconToggleContainer for: html nextId ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle" for="id1"></label>'
]

{ #category : #tests }
MDLIconToggleContainerTest >> testRippleEffect [
	self assert: [ :html | html mdlIconToggleContainer rippleEffect ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect"></label>'
]

{ #category : #tests }
MDLIconToggleContainerTest >> testRippleEffectIf [
	self assert: [ :html | html mdlIconToggleContainer rippleEffectIf: true ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlIconToggleContainer rippleEffectIf: false ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle"></label>'.
]

{ #category : #tests }
MDLIconToggleContainerTest >> testWithContent [
	self assert: [ :html | html mdlIconToggleContainer with: 'Test' ] generates: '<label class="mdl-icon-toggle mdl-js-icon-toggle">Test</label>'
]
