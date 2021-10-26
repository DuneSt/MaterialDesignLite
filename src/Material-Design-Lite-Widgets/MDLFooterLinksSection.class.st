Class {
	#name : #MDLFooterLinksSection,
	#superclass : #MDLFooterAbstractSection,
	#instVars : [
		'linksList'
	],
	#category : 'Material-Design-Lite-Widgets-Footer'
}

{ #category : #adding }
MDLFooterLinksSection >> addLinksList: aLinksList [
	linksList := aLinksList
]

{ #category : #initialization }
MDLFooterLinksSection >> initialize [
	super initialize.
	linksList := MDLMegaFooterLinksList new
]

{ #category : #rendering }
MDLFooterLinksSection >> renderSectionOn: html [
	linksList renderLinksWithLogoOn: html
]
