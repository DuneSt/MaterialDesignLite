"
Description
--------------------

I am a brush to create a left section inside a mini footer.

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
	#name : #MDLMiniFooterLeftSection,
	#superclass : #MDLDivTag,
	#category : 'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMiniFooterLeftSection >> initialize [
	super initialize.
	self class: 'mdl-mini-footer__left-section'
]
