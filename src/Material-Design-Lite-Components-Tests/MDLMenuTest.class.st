Class {
	#name : #MDLMenuTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLMenuTest >> testBareBrush [
	self assert: [ :html | html mdlMenu ] generates: '<ul class="mdl-menu mdl-js-menu"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testBottomLeft [
	self assert: [ :html | html mdlMenu bottomLeft ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-left"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testBottomRight [
	self assert: [ :html | html mdlMenu bottomRight ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testFor [
	self assert: [ :html | html mdlMenu for: html nextId ] generates: '<ul class="mdl-menu mdl-js-menu" for="id1"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testRippleEffect [
	self assert: [ :html | html mdlMenu rippleEffect ] generates: '<ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testRippleEffectIf [
	self assert: [ :html | html mdlMenu rippleEffectIf: true ] generates: '<ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect"></ul>'.
	self assert: [ :html | html mdlMenu rippleEffectIf: false ] generates: '<ul class="mdl-menu mdl-js-menu"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testTopLeft [
	self assert: [ :html | html mdlMenu topLeft ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--top-left"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testTopRight [
	self assert: [ :html | html mdlMenu topRight ] generates: '<ul class="mdl-menu mdl-js-menu mdl-menu--top-right"></ul>'
]

{ #category : #tests }
MDLMenuTest >> testWithContent [
	self assert: [ :html | html mdlMenu with: 'Test' ] generates: '<ul class="mdl-menu mdl-js-menu">Test</ul>'
]
