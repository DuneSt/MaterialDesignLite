Class {
	#name : #MDLAnchorButtonTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Buttons'
}

{ #category : #tests }
MDLAnchorButtonTest >> testAccentColor [
	self
		assert: [ :html | 
			html mdlAnchorButton
				accentColor;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--accent">Validate</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testBareBrush [
	self assert: [ :html | html mdlAnchorButton ] generates: '<a class="mdl-button mdl-js-button"></a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testColored [
	self
		assert: [ :html | 
			html mdlAnchorButton
				colored;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--colored">Validate</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testFab [
	self
		assert: [ :html | 
			html mdlAnchorButton
				fab;
				with: '+' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--fab">+</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testFor [
	self
		assert: [ :html | 
			html mdlAnchorButton
				for: html nextId;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button" for="id1">Validate</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testIcon [
	self
		assert: [ :html | 
			html mdlAnchorButton
				icon;
				with: [ html mdlIcon: 'mood' ] ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--icon"><i class="material-icons">mood</i></a>'.
	self assert: [ :html | html mdlAnchorButton icon: 'mood' ] generates: '<a class="mdl-button mdl-js-button mdl-button--icon"><i class="material-icons">mood</i></a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testMiniFab [
	self
		assert: [ :html | 
			html mdlAnchorButton
				miniFab;
				with: '+' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--mini-fab">+</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testPrimaryColor [
	self
		assert: [ :html | 
			html mdlAnchorButton
				primaryColor;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--primary">Validate</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testRaised [
	self
		assert: [ :html | 
			html mdlAnchorButton
				raised;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-button--raised">Validate</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testRippleEffect [
	self
		assert: [ :html | 
			html mdlAnchorButton
				rippleEffect;
				with: 'Validate' ]
		generates: '<a class="mdl-button mdl-js-button mdl-js-ripple-effect">Validate</a>'
]

{ #category : #tests }
MDLAnchorButtonTest >> testWithContent [
	self assert: [ :html | html mdlAnchorButton with: 'Validate' ] generates: '<a class="mdl-button mdl-js-button">Validate</a>'
]
