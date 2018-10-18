Class {
	#name : #MDLLayoutTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutTest >> testBareBrush [
	self assert: [ :html | html mdlLayout ] generates: '<div class="mdl-layout mdl-js-layout"></div>'
]

{ #category : #tests }
MDLLayoutTest >> testFixedDrawer [
	self assert: [ :html | html mdlLayout fixedDrawer ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-drawer"></div>'
]

{ #category : #tests }
MDLLayoutTest >> testFixedHeader [
	self assert: [ :html | html mdlLayout fixedHeader ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header"></div>'
]

{ #category : #tests }
MDLLayoutTest >> testFixedTabs [
	self assert: [ :html | html mdlLayout fixedTabs ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--fixed-tabs"></div>'
]

{ #category : #tests }
MDLLayoutTest >> testNoDesktopDrawerButton [
	self assert: [ :html | html mdlLayout noDesktopDrawerButton ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--no-desktop-drawer-button"></div>'
]

{ #category : #tests }
MDLLayoutTest >> testNoDrawerButton [
	self assert: [ :html | html mdlLayout noDrawerButton ] generates: '<div class="mdl-layout mdl-js-layout mdl-layout--no-drawer-button"></div>'
]

{ #category : #tests }
MDLLayoutTest >> testWithContent [
	self assert: [ :html | html mdlLayout: 'Test' ] generates: '<div class="mdl-layout mdl-js-layout">Test</div>'
]
