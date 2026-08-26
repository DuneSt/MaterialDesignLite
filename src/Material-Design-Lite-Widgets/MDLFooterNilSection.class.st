Class {
	#name : 'MDLFooterNilSection',
	#superclass : 'MDLFooterAbstractSection',
	#category : 'Material-Design-Lite-Widgets-Footer',
	#package : 'Material-Design-Lite-Widgets',
	#tag : 'Footer'
}

{ #category : 'adding' }
MDLFooterNilSection >> addLinks: someLinks [
	self shouldNotImplement 
]

{ #category : 'testing' }
MDLFooterNilSection >> isNilSection [
	^ true
]

{ #category : 'testing' }
MDLFooterNilSection >> renderSectionOn: html [
	"do nothing"
]
