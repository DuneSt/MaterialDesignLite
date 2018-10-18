Class {
	#name : #MDLCardWidgetTests,
	#superclass : #MDLAbstractSeasideTestCase,
	#instVars : [
		'card'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Cards'
}

{ #category : #running }
MDLCardWidgetTests >> setUp [
	super setUp.
	card := MDLCardWidget new
]

{ #category : #tests }
MDLCardWidgetTests >> testAccentColorTitle [
	card accentColorTitle: 'This is my test title'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--accent mdl-color-text--accent-contrast"><h2 class="mdl-card__title-text">This is my test title</h2></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testAccentColorTitleClass [
	card accentColorTitle: 'This is my test title' class: 'myClass'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--accent mdl-color-text--accent-contrast myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testActionsBordered [
	card actionsBordered.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__actions mdl-card--border"></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testAddAction [
	self
		assert: [ :html | 
			card addAction: [ html mdlButton: 'Validate' ].
			html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__actions"><button class="mdl-button mdl-js-button" type="submit">Validate</button></div></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testAddComponentOrBlock [
	self
		assert: [ :html | 
			card addComponentOrBlock: [ html mdlButton: 'Validate' ].
			html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><button class="mdl-button mdl-js-button" type="submit">Validate</button></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testAddTextContainer [
	card addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.'.
	self
		assert: [ :html | html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__supporting-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.</div></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testAddTextContainerClass [
	card addTextContainer: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.' class: 'myClass'.
	self
		assert: [ :html | html render: card ]
		generates: '<div class="mdl-card mdl-card-widget"><div class="mdl-card__supporting-text myClass">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labor.</div></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testPrimaryColorTitle [
	card primaryColorTitle: 'This is my test title'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--primary mdl-color-text--primary-contrast"><h2 class="mdl-card__title-text">This is my test title</h2></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testPrimaryColorTitleClass [
	card primaryColorTitle: 'This is my test title' class: 'myClass'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title mdl-color--primary mdl-color-text--primary-contrast myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testShadow [
	"Test than a card can have a shadow."
	
	card shadow: 2.
	self assert: [ :html | html render: card ] generates: '<div class="mdl-card mdl-card-widget mdl-shadow--2dp"></div>'.
	card shadow: 24.
	self assert: [ :html | html render: card ] generates: '<div class="mdl-card mdl-card-widget mdl-shadow--24dp"></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testTitle [
	card title: 'This is my test title'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title"><h2 class="mdl-card__title-text">This is my test title</h2></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testTitleClass [
	card title: 'This is my test title' class: 'myClass'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title myClass"><h2 class="mdl-card__title-text">This is my test title</h2></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testTitleLevel [
	card title: 'This is my test title' level: 3.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title"><h3 class="mdl-card__title-text">This is my test title</h3></div>'
]

{ #category : #tests }
MDLCardWidgetTests >> testTitleLevelClass [
	card title: 'This is my test title' level: 3 class: 'myClass'.
	self assert: [ :html | html render: card ] generatedIncludes: '<div class="mdl-card__title myClass"><h3 class="mdl-card__title-text">This is my test title</h3></div>'
]
