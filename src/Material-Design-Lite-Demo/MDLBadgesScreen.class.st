"
Small status descriptors for UI elements.
"
Class {
	#name : #MDLBadgesScreen,
	#superclass : #MDLComponentDemo,
	#category : #'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLBadgesScreen class >> icon [
	^ 'compbadgesPng'
]

{ #category : #accessing }
MDLBadgesScreen class >> title [
	^ 'Badges'
]

{ #category : #sections }
MDLBadgesScreen >> iconBadges [
	^ OrderedDictionary new
		add: 'Number' -> #renderNumberBadgeOn:;
		add: 'Icon' -> #renderIconBadgeOn:;
		yourself
]

{ #category : #sections }
MDLBadgesScreen >> noBackgroundBadges [
	^ OrderedDictionary new
		add: 'Number with no background' -> #renderNoBackgroundNumberBadgeOn:;
		add: 'Icon with no background' -> #renderNoBackgroundIconBadgeOn:;
		yourself
]

{ #category : #sections }
MDLBadgesScreen >> overlapedBadges [
	^ OrderedDictionary new
		add: 'Overlaped' -> #renderOverlapedBadgeOn:;
		add: 'Not overlaped' -> #renderNotOverlapedBadgeOn:;
		yourself
]

{ #category : #demos }
MDLBadgesScreen >> renderIconBadgeOn: html [
	html mdlIconBadge
		dataBadge: (Character codePoint: 9829) asString;
		overlap;
		with: 'account_box'
]

{ #category : #demos }
MDLBadgesScreen >> renderIconTextBadgeOn: html [
	html mdlBadge
		dataBadge: (Character codePoint: 9829) asString;
		with: 'Mood'
]

{ #category : #demos }
MDLBadgesScreen >> renderNoBackgroundIconBadgeOn: html [
	html mdlIconBadge
		dataBadge: (Character codePoint: 9829) asString;
		overlap;
		noBackground;
		with: 'account_box'
]

{ #category : #demos }
MDLBadgesScreen >> renderNoBackgroundNumberBadgeOn: html [
	html mdlIconBadge
		dataBadge: '1';
		overlap;
		noBackground;
		with: 'account_box'
]

{ #category : #demos }
MDLBadgesScreen >> renderNotOverlapedBadgeOn: html [
	html mdlBadge
		dataBadge: '4';
		with: 'Inbox'
]

{ #category : #demos }
MDLBadgesScreen >> renderNumberBadgeOn: html [
	html mdlIconBadge
		dataBadge: '1';
		overlap;
		with: 'account_box'
]

{ #category : #demos }
MDLBadgesScreen >> renderNumberTextBadgeOn: html [
	html mdlBadge
		dataBadge: '4';
		with: 'Inbox'
]

{ #category : #demos }
MDLBadgesScreen >> renderOverlapedBadgeOn: html [
	html mdlBadge
		dataBadge: '4';
		overlap;
		with: 'Inbox'
]

{ #category : #rendering }
MDLBadgesScreen >> renderScreenContentOn: html [
	self
		render: self iconBadges on: html;
		render: self textBadges on: html;
		render: self overlapedBadges on: html;
		render: self noBackgroundBadges on: html
]

{ #category : #sections }
MDLBadgesScreen >> textBadges [
	^ OrderedDictionary new
		add: 'Number' -> #renderNumberTextBadgeOn:;
		add: 'Icon' -> #renderIconTextBadgeOn:;
		yourself
]
