Class {
	#name : #MDLTabsTabBarTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLTabsTabBarTest >> testBareBrush [
	self assert: [ :html | html mdlTabBar ] generates: '<div class="mdl-tabs__tab-bar"></div>'
]

{ #category : #tests }
MDLTabsTabBarTest >> testRippleEffect [
	self assert: [ :html | html mdlTabBar rippleEffect ] generates: '<div class="mdl-tabs__tab-bar mdl-js-ripple-effect"></div>'
]

{ #category : #tests }
MDLTabsTabBarTest >> testRippleEffectIf [
	self assert: [ :html | html mdlTabBar rippleEffectIf: true ] generates: '<div class="mdl-tabs__tab-bar mdl-js-ripple-effect"></div>'.
	self assert: [ :html | html mdlTabBar rippleEffectIf: false ] generates: '<div class="mdl-tabs__tab-bar"></div>'.
]

{ #category : #tests }
MDLTabsTabBarTest >> testWithContent [
	self assert: [ :html | html mdlTabBar: 'test' ] generates: '<div class="mdl-tabs__tab-bar">test</div>'
]
