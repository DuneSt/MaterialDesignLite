"
I'm a Mini Footer.
In this implementation, leftSection is a Dictionary (title -> {  label -> url }).
The right section must be a Collection of WAComponents that will be rendered on the right side.
"
Class {
	#name : #MDLSmallFooter,
	#superclass : #MDLWidget,
	#instVars : [
		'leftSection',
		'rightSection'
	],
	#category : #'Material-Design-Lite-Widgets-Footer'
}

{ #category : #initialization }
MDLSmallFooter >> initialize [
	super initialize.
	leftSection := MDLFooterNilSection new.
	rightSection := MDLFooterNilSection new
]

{ #category : #adding }
MDLSmallFooter >> onLeftSideAddLinks: links [
	"Links must be formatted as following : (header -> #((label1->url1) . (label2 -> url2)))"
	leftSection isNilSection
		ifTrue: [ leftSection := MDLFooterLinksSection new ].
	leftSection := leftSection addLinksList: (MDLMiniFooterLinksList new addLinks: links; yourself)
]

{ #category : #adding }
MDLSmallFooter >> onRightSideAddComponents: components [
	"Components must be an array of WAComponents (render: will be called on them)"
	rightSection isNilSection
		ifTrue: [ rightSection := MDLFooterComponentsSection new ].
	rightSection := rightSection addComponents: components
]

{ #category : #rendering }
MDLSmallFooter >> renderContentOn: html [
	html mdlMiniFooter: [ 
			html mdlMiniFooterLeftSection: [ leftSection renderSectionOn: html ].
			html mdlMiniFooterRightSection: [ rightSection renderSectionOn: html ] ] 
]
