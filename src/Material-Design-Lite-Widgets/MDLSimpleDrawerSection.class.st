Class {
	#name : 'MDLSimpleDrawerSection',
	#superclass : 'MDLLinkingLayoutSection',
	#category : 'Material-Design-Lite-Widgets-Header',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Header'
}

{ #category : 'as yet unclassified' }
MDLSimpleDrawerSection >> renderContentOn: html [
	html mdlLayoutDrawer: [ 
		html mdlLayoutTitle: layout title.
		self renderLinksOn: html ]
]
