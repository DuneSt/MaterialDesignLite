Class {
	#name : #MDLLinkingLayoutSection,
	#superclass : #MDLAbstractLayoutSection,
	#instVars : [
		'links'
	],
	#category : 'Material-Design-Lite-Widgets-Header'
}

{ #category : #initialization }
MDLLinkingLayoutSection >> initialize [
	super initialize.
	links := OrderedCollection new.
]

{ #category : #accessing }
MDLLinkingLayoutSection >> links [
	^ links
]

{ #category : #accessing }
MDLLinkingLayoutSection >> links: anOrderedCollection [
	"This should be a collection of dictionaries Text -> callback"
	links := anOrderedCollection
]

{ #category : #rendering }
MDLLinkingLayoutSection >> renderLinksOn: html [
	self links
		do: [ :aDictionary | 
			html
				mdlNavigation: [ 
					aDictionary
						keysAndValuesDo: [ :label :callback | 
							html mdlNavigationLink
								callback: callback;
								with: label ] ].
			html mdlLayoutSpacer ]
]
