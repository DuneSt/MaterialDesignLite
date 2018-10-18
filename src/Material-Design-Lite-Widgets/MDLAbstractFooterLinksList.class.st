Class {
	#name : #MDLAbstractFooterLinksList,
	#superclass : #Object,
	#instVars : [
		'links',
		'title'
	],
	#category : 'Material-Design-Lite-Widgets-Footer'
}

{ #category : #adding }
MDLAbstractFooterLinksList >> addLinks: l [
	"Links must be formatted as followed"
	title := l key.
	links addAll: l value
]

{ #category : #initialization }
MDLAbstractFooterLinksList >> initialize [
	super initialize.
	links := OrderedDictionary new
]

{ #category : #'as yet unclassified' }
MDLAbstractFooterLinksList >> renderLinksListOn: html [
	self subclassResponsibility 
]

{ #category : #'as yet unclassified' }
MDLAbstractFooterLinksList >> renderLinksOn: html [
	links keysAndValuesDo: [ :label :callback | 
		html listItem: [ 
			html anchor
				callback: callback;
				with: label ] ]
]

{ #category : #'as yet unclassified' }
MDLAbstractFooterLinksList >> renderLinksWithHeaderOn: html [
	html mdlFooterHeading: title.
	self renderLinksListOn: html
]

{ #category : #'as yet unclassified' }
MDLAbstractFooterLinksList >> renderLinksWithLogoOn: html [
	html mdlLogo: title.
	self renderLinksListOn: html
]
