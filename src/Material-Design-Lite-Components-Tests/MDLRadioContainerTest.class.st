Class {
	#name : #MDLRadioContainerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Forms'
}

{ #category : #tests }
MDLRadioContainerTest >> testBareBrush [
	self assert: [ :html | html mdlRadioContainer ] generates: '<label class="mdl-radio mdl-js-radio"></label>'
]

{ #category : #tests }
MDLRadioContainerTest >> testFor [
	self assert: [ :html | html mdlRadioContainer for: html nextId ] generates: '<label class="mdl-radio mdl-js-radio" for="id1"></label>'
]

{ #category : #tests }
MDLRadioContainerTest >> testRippleEffect [
	self assert: [ :html | html mdlRadioContainer rippleEffect ] generates: '<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"></label>'
]

{ #category : #tests }
MDLRadioContainerTest >> testRippleEffectIf [
	self assert: [ :html | html mdlRadioContainer rippleEffectIf: true ] generates: '<label class="mdl-radio mdl-js-radio mdl-js-ripple-effect"></label>'.
	self assert: [ :html | html mdlRadioContainer rippleEffectIf: false ] generates: '<label class="mdl-radio mdl-js-radio"></label>'
]

{ #category : #tests }
MDLRadioContainerTest >> testWithContent [
	self assert: [ :html | html mdlRadioContainer with: 'test' ] generates: '<label class="mdl-radio mdl-js-radio">test</label>'
]
