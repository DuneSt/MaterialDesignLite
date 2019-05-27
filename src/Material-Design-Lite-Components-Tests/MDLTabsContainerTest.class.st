Class {
	#name : #MDLTabsContainerTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLTabsContainerTest >> testBareBrush [
	self assert: [ :html | html mdlTabs ] generates: '<div class="mdl-tabs mdl-js-tabs"></div>'
]

{ #category : #tests }
MDLTabsContainerTest >> testRippleEffect [
	self assert: [ :html | html mdlTabs rippleEffect ] generates: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect"></div>'
]

{ #category : #tests }
MDLTabsContainerTest >> testRippleEffectIf [
	self assert: [ :html | html mdlTabs rippleEffectIf: true ] generates: '<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect"></div>'.
	self assert: [ :html | html mdlTabs rippleEffectIf: false ] generates: '<div class="mdl-tabs mdl-js-tabs"></div>'.
]

{ #category : #tests }
MDLTabsContainerTest >> testWithContent [
	self assert: [ :html | html mdlTabs: 'test' ] generates: '<div class="mdl-tabs mdl-js-tabs">test</div>'
]
