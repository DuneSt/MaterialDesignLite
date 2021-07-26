"
Description
--------------------

I am a brush to create a mini footer link list inside a mini footer.

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
	#name : #MDLMiniFooterLinkList,
	#superclass : #WAUnorderedListTag,
	#category : #'Material-Design-Lite-Components-Footer'
}

{ #category : #initialization }
MDLMiniFooterLinkList >> initialize [
	super initialize.
	self class: 'mdl-mini-footer__link-list'
]
