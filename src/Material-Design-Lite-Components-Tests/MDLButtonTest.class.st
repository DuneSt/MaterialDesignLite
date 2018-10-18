Class {
	#name : #MDLButtonTest,
	#superclass : #MDLAbstractBrushTest,
	#category : 'Material-Design-Lite-Components-Tests-Buttons'
}

{ #category : #tests }
MDLButtonTest >> testAccentColor [
	self
		assert: [ :html | 
			html mdlButton
				accentColor;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--accent" type="submit">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testAsLabel [
	self
		assert: [ :html | 
			html mdlButton
				asLabel;
				with: 'Validate' ]
		generates: '<label class="mdl-button mdl-js-button" type="submit">Validate</label>'
]

{ #category : #tests }
MDLButtonTest >> testBareBrush [
	self assert: [ :html | html mdlButton ] generates: '<button class="mdl-button mdl-js-button" type="submit"></button>'
]

{ #category : #tests }
MDLButtonTest >> testColored [
	self
		assert: [ :html | 
			html mdlButton
				colored;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--colored" type="submit">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testFab [
	self
		assert: [ :html | 
			html mdlButton
				fab;
				with: '+' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--fab" type="submit">+</button>'
]

{ #category : #tests }
MDLButtonTest >> testFor [
	self
		assert: [ :html | 
			html mdlButton
				for: html nextId;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button" for="id1" type="submit">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testIcon [
	self
		assert: [ :html | 
			html mdlButton
				icon;
				with: [ html mdlIcon: 'mood' ] ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></button>'.
	self assert: [ :html | html mdlButton icon: 'mood' ] generates: '<button class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></button>'
]

{ #category : #tests }
MDLButtonTest >> testLabelIcon [
	self
		assert: [ :html | 
			html mdlButton
				labelIcon;
				with: [ html mdlIcon: 'mood' ] ]
		generates: '<label class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></label>'.
	self assert: [ :html | html mdlButton labelIcon: 'mood' ] generates: '<label class="mdl-button mdl-js-button mdl-button--icon" type="submit"><i class="material-icons">mood</i></label>'
]

{ #category : #tests }
MDLButtonTest >> testMiniFab [
	self
		assert: [ :html | 
			html mdlButton
				miniFab;
				with: '+' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--mini-fab" type="submit">+</button>'
]

{ #category : #tests }
MDLButtonTest >> testPrimaryColor [
	self
		assert: [ :html | 
			html mdlButton
				primaryColor;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--primary" type="submit">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testRaised [
	self
		assert: [ :html | 
			html mdlButton
				raised;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-button--raised" type="submit">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testResetType [
	self assert: [ :html | html mdlButton resetType; with: 'Validate' ] generates: '<button class="mdl-button mdl-js-button">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testRippleEffect [
	self
		assert: [ :html | 
			html mdlButton
				rippleEffect;
				with: 'Validate' ]
		generates: '<button class="mdl-button mdl-js-button mdl-js-ripple-effect" type="submit">Validate</button>'
]

{ #category : #tests }
MDLButtonTest >> testWithContent [
	self assert: [ :html | html mdlButton: 'Validate' ] generates: '<button class="mdl-button mdl-js-button" type="submit">Validate</button>'
]
