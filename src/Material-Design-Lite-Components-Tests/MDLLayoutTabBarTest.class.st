Class {
	#name : #MDLLayoutTabBarTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutTabBarTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutTabBar ] generates: '<div class="mdl-layout__tab-bar"></div>'
]

{ #category : #tests }
MDLLayoutTabBarTest >> testRippleEffect [
	self assert: [ :html | html mdlLayoutTabBar rippleEffect ] generates: '<div class="mdl-layout__tab-bar mdl-js-ripple-effect"></div>'
]

{ #category : #tests }
MDLLayoutTabBarTest >> testRippleEffectIf [
	self assert: [ :html | html mdlLayoutTabBar rippleEffectIf: true ] generates: '<div class="mdl-layout__tab-bar mdl-js-ripple-effect"></div>'.
	self assert: [ :html | html mdlLayoutTabBar rippleEffectIf: false ] generates: '<div class="mdl-layout__tab-bar"></div>'
]

{ #category : #tests }
MDLLayoutTabBarTest >> testWithContent [
	self assert: [ :html | html mdlLayoutTabBar: 'test' ] generates: '<div class="mdl-layout__tab-bar">test</div>'
]
