"
Description
--------------------

I am a brush to create a social button inside a mini footer.

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
	#name : #MDLMiniFooterSocialButton,
	#superclass : #WAButtonTag,
	#category : #'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMiniFooterSocialButton >> initialize [
	super initialize.
	self class: 'mdl-mini-footer__social-btn'
]
