Class {
	#name : #MDLPollTests,
	#superclass : #TestCase,
	#instVars : [
		'poll'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Poll'
}

{ #category : #running }
MDLPollTests >> setUp [
	super setUp.
	poll := MDLPoll new
]

{ #category : #tests }
MDLPollTests >> testDecreaseNegativeCount [
	poll negativeCount: 10.
	poll decreaseNegativeCount.
	self assert: poll negativeCount equals: 9
]

{ #category : #tests }
MDLPollTests >> testDecreasePositiveCount [
	poll positiveCount: 10.
	poll decreasePositiveCount.
	self assert: poll positiveCount equals: 9
]

{ #category : #tests }
MDLPollTests >> testIncreaseNegativeCount [
	poll negativeCount: 10.
	poll increaseNegativeCount.
	self assert: poll negativeCount equals: 11
]

{ #category : #tests }
MDLPollTests >> testIncreasePositiveCount [
	poll positiveCount: 10.
	poll increasePositiveCount.
	self assert: poll positiveCount equals: 11
]
