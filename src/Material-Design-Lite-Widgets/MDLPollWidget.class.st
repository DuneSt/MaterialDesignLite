"
I represent a widget for polling with thumbs.

For you project, you must subclass me and override #negativePollBlock and #positivePollBlock 
"
Class {
	#name : #MDLPollWidget,
	#superclass : #MDLHighLevelWidget,
	#instVars : [
		'model'
	],
	#category : 'Material-Design-Lite-Widgets-Poll'
}

{ #category : #'instance creation' }
MDLPollWidget class >> newWithPoll: aMDLPoll [
	^ self new poll: aMDLPoll
]

{ #category : #adding }
MDLPollWidget >> addNegativeVote [
	model increaseNegativeCount
]

{ #category : #adding }
MDLPollWidget >> addPositiveVote [
	model increasePositiveCount
]

{ #category : #initialization }
MDLPollWidget >> initialize [
	super initialize.
	self class: 'mdl-poll-widget'.
	model := MDLPoll new
]

{ #category : #javascript }
MDLPollWidget >> jsNegativeButtonClickedOn: html [
	^ (html jQuery id: self id) load
		html: [ :ajaxHtml | 
			self addNegativeVote.
			self renderPollButtonsOn: ajaxHtml ]
]

{ #category : #javascript }
MDLPollWidget >> jsPositiveButtonClickedOn: html [
	^ (html jQuery id: self id) load
		html: [ :ajaxHtml | 
			self addPositiveVote.
			self renderPollButtonsOn: ajaxHtml ]
]

{ #category : #accessing }
MDLPollWidget >> model [
	^ model
]

{ #category : #accessing }
MDLPollWidget >> poll: aPoll [
	model := aPoll
]

{ #category : #rendering }
MDLPollWidget >> renderContentOn: html [
	self ensureId: html.
	html div
		id: self id;
		with: [ self renderPollButtonsOn: html ]
]

{ #category : #rendering }
MDLPollWidget >> renderNegativePollButtonOn: html [
	html mdlIconBadge
		overlap;
		dataBadge: model negativeCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				onClick: (self jsNegativeButtonClickedOn: html);
				icon: 'thumb_down' ]
]

{ #category : #rendering }
MDLPollWidget >> renderPollButtonsOn: html [
	self renderPositivePollButtonOn: html.
	self renderNegativePollButtonOn: html
]

{ #category : #rendering }
MDLPollWidget >> renderPositivePollButtonOn: html [
	html mdlIconBadge
		overlap;
		dataBadge: model positiveCount greaseString;
		with: [ html mdlButton
				rippleEffect;
				icon;
				onClick: (self jsPositiveButtonClickedOn: html);
				icon: 'thumb_up' ]
]
