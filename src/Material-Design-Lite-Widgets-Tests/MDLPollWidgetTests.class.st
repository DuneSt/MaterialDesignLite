Class {
	#name : #MDLPollWidgetTests,
	#superclass : #TestCase,
	#instVars : [
		'pollWidget'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Poll'
}

{ #category : #running }
MDLPollWidgetTests >> setUp [
	super setUp.
	pollWidget := MDLPollWidget new
]

{ #category : #tests }
MDLPollWidgetTests >> testAddNegativeVote [
	self assert: pollWidget model negativeCount equals: 0.
	pollWidget addNegativeVote.
	self assert: pollWidget model negativeCount equals: 1.
]

{ #category : #tests }
MDLPollWidgetTests >> testAddPositiveVote [
	self assert: pollWidget model positiveCount equals: 0.
	pollWidget addPositiveVote.
	self assert: pollWidget model positiveCount equals: 1.
]
