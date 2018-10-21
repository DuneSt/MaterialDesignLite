"
I am the model for MDLPollWidget.

I just store the number of positive and negative count.
"
Class {
	#name : #MDLPoll,
	#superclass : #GRObject,
	#instVars : [
		'positiveCount',
		'negativeCount'
	],
	#category : #'Material-Design-Lite-Widgets-Poll'
}

{ #category : #accessing }
MDLPoll >> decreaseNegativeCount [
	negativeCount := negativeCount - 1
]

{ #category : #accessing }
MDLPoll >> decreasePositiveCount [
	positiveCount := positiveCount - 1
]

{ #category : #accessing }
MDLPoll >> increaseNegativeCount [
	negativeCount := negativeCount + 1
]

{ #category : #accessing }
MDLPoll >> increasePositiveCount [
	positiveCount := positiveCount + 1
]

{ #category : #initialization }
MDLPoll >> initialize [
	super initialize.
	positiveCount := 0.
	negativeCount := 0
]

{ #category : #accessing }
MDLPoll >> negativeCount [
	^ negativeCount
]

{ #category : #accessing }
MDLPoll >> negativeCount: anObject [
	negativeCount := anObject
]

{ #category : #accessing }
MDLPoll >> positiveCount [
	^ positiveCount
]

{ #category : #accessing }
MDLPoll >> positiveCount: anObject [
	positiveCount := anObject
]
