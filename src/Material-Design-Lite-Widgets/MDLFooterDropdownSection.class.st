Class {
	#name : #MDLFooterDropdownSection,
	#superclass : #MDLFooterAbstractSection,
	#instVars : [
		'linksLists'
	],
	#category : 'Material-Design-Lite-Widgets-Footer'
}

{ #category : #adding }
MDLFooterDropdownSection >> addLinksLists: lists [
	linksLists addAll: lists
]

{ #category : #initialization }
MDLFooterDropdownSection >> initialize [
	super initialize.
	linksLists := OrderedCollection new
]

{ #category : #rendering }
MDLFooterDropdownSection >> renderSectionOn: html [
	linksLists do: [ :aList | html mdlFooterDropdownSection: [ aList renderLinksWithHeaderOn: html ] ].
]
