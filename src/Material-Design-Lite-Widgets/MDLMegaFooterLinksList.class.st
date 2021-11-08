Class {
	#name : #MDLMegaFooterLinksList,
	#superclass : #MDLAbstractFooterLinksList,
	#category : 'Material-Design-Lite-Widgets-Footer'
}

{ #category : #'as yet unclassified' }
MDLMegaFooterLinksList >> renderLinksListOn: html [
	html mdlFooterLinkList: [ 
		self renderLinksOn: html ]
]
