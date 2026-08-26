Class {
	#name : 'MDLSimpleRowHeaderSection',
	#superclass : 'MDLAbstractHeaderSection',
	#category : 'Material-Design-Lite-Widgets-Header',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Header'
}

{ #category : 'rendering' }
MDLSimpleRowHeaderSection >> renderContentOn: html [
	(html brush: brush)
		with: [ 
			html
				mdlLayoutHeaderRow: [ 
					html mdlLayoutTitle: layout title.
					self renderLinksOn: html ] ]
]
