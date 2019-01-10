Class {
	#name : #MDLIconBadgeTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Badge'
}

{ #category : #tests }
MDLIconBadgeTest >> testBareBrush [
	self assert: [ :html | html mdlIconBadge ] generates: '<div class="mdl-badge material-icons"></div>'
]

{ #category : #tests }
MDLIconBadgeTest >> testComplexe [
	self
		assert: [ :html | 
			html mdlIconBadge
				overlap;
				noBackground;
				dataBadge: 3;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons mdl-badge--overlap mdl-badge--no-background" data-badge="3">account_box</div>'
]

{ #category : #tests }
MDLIconBadgeTest >> testDataBadge [
	self
		assert: [ :html | 
			html mdlIconBadge
				dataBadge: '1';
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons" data-badge="1">account_box</div>'
]

{ #category : #tests }
MDLIconBadgeTest >> testDataBadgeWithNumber [
	self
		assert: [ :html | 
			html mdlIconBadge
				dataBadge: 1;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons" data-badge="1">account_box</div>'
]

{ #category : #tests }
MDLIconBadgeTest >> testNoBackground [
	self
		assert: [ :html | 
			html mdlIconBadge
				noBackground;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons mdl-badge--no-background">account_box</div>'
]

{ #category : #tests }
MDLIconBadgeTest >> testOverlap [
	self
		assert: [ :html | 
			html mdlIconBadge
				overlap;
				with: 'account_box' ]
		generates: '<div class="mdl-badge material-icons mdl-badge--overlap">account_box</div>'
]

{ #category : #tests }
MDLIconBadgeTest >> testWithContent [
	self assert: [ :html | html mdlIconBadge: 'account_box' ] generates: '<div class="mdl-badge material-icons">account_box</div>'
]
