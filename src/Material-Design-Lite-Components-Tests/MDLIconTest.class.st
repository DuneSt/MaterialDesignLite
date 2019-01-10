Class {
	#name : #MDLIconTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Core'
}

{ #category : #tests }
MDLIconTest >> testBareBrush [
	self assert: [ :html | html mdlIcon ] generates: '<i class="material-icons"></i>'
]

{ #category : #tests }
MDLIconTest >> testChipIcon [
	self
		assert: [ :html | 
			html mdlIcon
				chipIcon;
				with: 'mood' ]
		generatedIncludes: '<i class="material-icons mdl-chip__contact" id="id1">mood</i>'
]

{ #category : #tests }
MDLIconTest >> testListItemAvatar [
	self
		assert: [ :html | 
			html mdlIcon
				listItemAvatar;
				with: 'mood' ]
		generates: '<i class="material-icons mdl-list__item-avatar">mood</i>'
]

{ #category : #tests }
MDLIconTest >> testListItemIcon [
	self
		assert: [ :html | 
			html mdlIcon
				listItemIcon;
				with: 'mood' ]
		generates: '<i class="material-icons mdl-list__item-icon">mood</i>'
]

{ #category : #tests }
MDLIconTest >> testToggle [
	self
		assert: [ :html | 
			html mdlIcon
				toggle;
				with: 'mood' ]
		generates: '<i class="material-icons mdl-icon-toggle__label">mood</i>'
]

{ #category : #tests }
MDLIconTest >> testWithContent [
	self assert: [ :html | html mdlIcon: 'mood' ] generates: '<i class="material-icons">mood</i>'
]
