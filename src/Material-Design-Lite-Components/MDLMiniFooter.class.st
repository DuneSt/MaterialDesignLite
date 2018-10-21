"
Description
--------------------

I am a brush to create a mini footer.

Example
--------------------

	html
		mdlMiniFooter: [ html
				mdlMiniFooterLeftSection: [ html mdlLogo: 'Title'.
					html
						mdlMiniFooterLinkList: [ html listItem: [ html anchor: 'Help' ].
							html listItem: [ html anchor: 'Privacy & Terms' ] ] ] ]
"
Class {
	#name : #MDLMiniFooter,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMiniFooter >> initialize [
	super initialize.
	self class: 'mdl-mini-footer'
]

{ #category : #accessing }
MDLMiniFooter >> tag [
	^ 'footer'
]
