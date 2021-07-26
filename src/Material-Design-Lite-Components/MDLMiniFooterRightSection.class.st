"
Description
--------------------

I am a brush to create a right section inside a mini footer.

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
	#name : #MDLMiniFooterRightSection,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMiniFooterRightSection >> initialize [
	super initialize.
	self class: 'mdl-mini-footer__right-section'
]
