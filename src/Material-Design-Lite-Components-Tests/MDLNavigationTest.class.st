Class {
	#name : #MDLNavigationTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Nav'
}

{ #category : #tests }
MDLNavigationTest >> testBareBrush [
	self assert: [ :html | html mdlNavigation ] generates: '<nav class="mdl-navigation"></nav>'
]

{ #category : #tests }
MDLNavigationTest >> testWithContent [
	self assert: [ :html | html mdlNavigation: 'test' ] generates: '<nav class="mdl-navigation">test</nav>'
]
