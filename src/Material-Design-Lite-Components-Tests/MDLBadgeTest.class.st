Class {
	#name : #MDLBadgeTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Badge'
}

{ #category : #tests }
MDLBadgeTest >> testBareBrush [
	self assert: [ :html | html mdlBadge ] generates: '<span class="mdl-badge"></span>'
]

{ #category : #tests }
MDLBadgeTest >> testComplexe [
	self
		assert: [ :html | 
			html mdlBadge
				overlap;
				noBackground;
				dataBadge: 3;
				with: 'Test' ]
		generates: '<span class="mdl-badge mdl-badge--overlap mdl-badge--no-background" data-badge="3">Test</span>'
]

{ #category : #tests }
MDLBadgeTest >> testDataBadge [
	self assert: [ :html | html mdlBadge dataBadge: '1' ] generates: '<span class="mdl-badge" data-badge="1"></span>'
]

{ #category : #tests }
MDLBadgeTest >> testDataBadgeWithNumber [
	self assert: [ :html | html mdlBadge dataBadge: 1 ] generates: '<span class="mdl-badge" data-badge="1"></span>'
]

{ #category : #tests }
MDLBadgeTest >> testNoBackground [
	self assert: [ :html | html mdlBadge noBackground ] generates: '<span class="mdl-badge mdl-badge--no-background"></span>'
]

{ #category : #tests }
MDLBadgeTest >> testOverlap [
	self assert: [ :html | html mdlBadge overlap ] generates: '<span class="mdl-badge mdl-badge--overlap"></span>'
]

{ #category : #tests }
MDLBadgeTest >> testWithContent [
	self
		assert: [ :html | 
			html mdlBadge
				dataBadge: '1';
				with: 'Test' ]
		generates: '<span class="mdl-badge" data-badge="1">Test</span>'
]
