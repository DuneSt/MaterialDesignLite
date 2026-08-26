Class {
	#name : 'MDLMiniFooterLinksList',
	#superclass : 'MDLAbstractFooterLinksList',
	#category : 'Material-Design-Lite-Widgets-Footer',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Footer'
}

{ #category : 'as yet unclassified' }
MDLMiniFooterLinksList >> renderLinksListOn: html [
	html mdlMiniFooterLinkList: [ 
		self renderLinksOn: html ]
]
