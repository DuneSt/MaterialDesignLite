Class {
	#name : #MDLCheckboxContainerTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLCheckboxContainerTest >> testBareBrush [
	self assert: [ :html | html mdlCheckboxContainer ] generates: '<label class="mdl-checkbox mdl-js-checkbox"></label>'
]

{ #category : #tests }
MDLCheckboxContainerTest >> testFor [
	self assert: [ :html | html mdlCheckboxContainer for: html nextId ] generates: '<label class="mdl-checkbox mdl-js-checkbox" for="id1"></label>'
]

{ #category : #tests }
MDLCheckboxContainerTest >> testRippleEffect [
	self assert: [ :html | html mdlCheckboxContainer rippleEffect ] generates: '<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect"></label>'
]

{ #category : #tests }
MDLCheckboxContainerTest >> testRippleEffectIf [
	self assert: [ :html | html mdlCheckboxContainer rippleEffectIf: true ] generates: '<label class="mdl-checkbox mdl-js-checkbox mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlCheckboxContainer rippleEffectIf: false ] generates: '<label class="mdl-checkbox mdl-js-checkbox"></label>'.
]

{ #category : #tests }
MDLCheckboxContainerTest >> testWithContent [
	self assert: [ :html | html mdlCheckboxContainer with: 'Test' ] generates: '<label class="mdl-checkbox mdl-js-checkbox">Test</label>'
]
