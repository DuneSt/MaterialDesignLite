Class {
	#name : #MDLSwitchContainerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLSwitchContainerTest >> testBareBrush [
	self assert: [ :html | html mdlSwitchContainer ] generates: '<label class="mdl-switch mdl-js-switch"></label>'
]

{ #category : #tests }
MDLSwitchContainerTest >> testFor [
	self assert: [ :html | html mdlSwitchContainer for: html nextId ] generates: '<label class="mdl-switch mdl-js-switch" for="id1"></label>'
]

{ #category : #tests }
MDLSwitchContainerTest >> testRippleEffect [
	self assert: [ :html | html mdlSwitchContainer rippleEffect ] generates: '<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"></label>'
]

{ #category : #tests }
MDLSwitchContainerTest >> testRippleEffectIf [
	self assert: [ :html | html mdlSwitchContainer rippleEffectIf: true ] generates: '<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlSwitchContainer rippleEffectIf: false ] generates: '<label class="mdl-switch mdl-js-switch"></label>'
]

{ #category : #tests }
MDLSwitchContainerTest >> testWithContent [
	self assert: [ :html | html mdlSwitchContainer with: 'test' ] generates: '<label class="mdl-switch mdl-js-switch">test</label>'
]
