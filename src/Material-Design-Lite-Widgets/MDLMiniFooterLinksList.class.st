Class {
	#name : #MDLMiniFooterLinksList,
	#superclass : #MDLAbstractFooterLinksList,
	#category : 'Material-Design-Lite-Widgets-Footer'
}

{ #category : #'as yet unclassified' }
MDLMiniFooterLinksList >> renderLinksListOn: html [
	html mdlMiniFooterLinkList: [ 
		self renderLinksOn: html ]
]
