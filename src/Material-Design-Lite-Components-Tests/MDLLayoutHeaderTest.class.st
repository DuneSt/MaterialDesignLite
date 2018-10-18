Class {
	#name : #MDLLayoutHeaderTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Layouts'
}

{ #category : #tests }
MDLLayoutHeaderTest >> testBareBrush [
	self assert: [ :html | html mdlLayoutHeader ] generates: '<header class="mdl-layout__header"></header>'
]

{ #category : #tests }
MDLLayoutHeaderTest >> testScroll [
	self assert: [ :html | html mdlLayoutHeader scroll ] generates: '<header class="mdl-layout__header mdl-layout__header--scroll"></header>'
]

{ #category : #tests }
MDLLayoutHeaderTest >> testSeamed [
	self assert: [ :html | html mdlLayoutHeader seamed ] generates: '<header class="mdl-layout__header mdl-layout__header--seamed"></header>'
]

{ #category : #tests }
MDLLayoutHeaderTest >> testTransparent [
	self assert: [ :html | html mdlLayoutHeader transparent ] generates: '<header class="mdl-layout__header mdl-layout__header--transparent"></header>'
]

{ #category : #tests }
MDLLayoutHeaderTest >> testWaterfall [
	self assert: [ :html | html mdlLayoutHeader waterfall ] generates: '<header class="mdl-layout__header mdl-layout__header--waterfall"></header>'
]

{ #category : #tests }
MDLLayoutHeaderTest >> testWaterfallHideTop [
	self assert: [ :html | html mdlLayoutHeader waterfallHideTop ] generates: '<header class="mdl-layout__header mdl-layout__header--waterfall-hide-top"></header>'
]

{ #category : #tests }
MDLLayoutHeaderTest >> testWithContent [
	self assert: [ :html | html mdlLayoutHeader: 'test' ] generates: '<header class="mdl-layout__header">test</header>'
]
