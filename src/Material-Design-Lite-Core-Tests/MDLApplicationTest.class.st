Class {
	#name : #MDLApplicationTest,
	#superclass : #MDLAbstractSeasideTestCase,
	#instVars : [
		'app'
	],
	#category : 'Material-Design-Lite-Core-Tests'
}

{ #category : #running }
MDLApplicationTest >> setUp [
	super setUp.
	app := MDLApplication new
]

{ #category : #tests }
MDLApplicationTest >> testAddScreen [
	| screen |
	self assert: app screens size equals: 0.
	screen := WAComponent new.
	app addScreen: screen.
	self assert: app screens size equals: 1.
	self assert: app screens anyOne equals: screen
]

{ #category : #tests }
MDLApplicationTest >> testPrimaryColorSecondaryColor [
	app primaryColor: MDLColor pink secondaryColor: MDLColor orange.
	self assert: app colors equals: 'pink-orange'
]

{ #category : #tests }
MDLApplicationTest >> testRemoveScreen [
	| screen |
	screen := WAComponent new.
	app addScreen: screen.
	self assert: app screens size equals: 1.
	app removeScreen: screen.
	self assert: app screens isEmpty
]
