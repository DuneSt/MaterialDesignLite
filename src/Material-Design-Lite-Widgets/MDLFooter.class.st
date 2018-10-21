"
I am a MDLFooter. 
I'm divided in 3 rows : topSection middleSection bottomSection.

Each section needs a collection of links to work, and a title.

The links in the middle section will be displayed vertically , whereas the top and bottom sections will be displayed horizontally. (it's a choice, you can implement your own footer if you want to do it in an other way).

The middle section can contain multiple Dropdown sections.

Top and Bottom sections can receive only one section (it is still a choice).
"
Class {
	#name : #MDLFooter,
	#superclass : #MDLWidget,
	#instVars : [
		'topLeftSection',
		'topRightSection',
		'middleSection',
		'bottomSection'
	],
	#category : #'Material-Design-Lite-Widgets-Footer'
}

{ #category : #'public api' }
MDLFooter >> atBottomAddLinks: links [
	"Links must be formatted as following : (header -> #((label1->url1) . (label2 -> url2)))"

	bottomSection isNilSection
		ifTrue: [ bottomSection := MDLFooterLinksSection new ].
	bottomSection := bottomSection
		addLinksList:
			(MDLMegaFooterLinksList new
				addLinks: links;
				yourself)
]

{ #category : #'public api' }
MDLFooter >> atMiddleAddLinks: links [
	"Links must be formatted as following : #(header -> #( (label1->url1) . (label2 -> url2)))"

	| list |
	middleSection isNilSection
		ifTrue: [ middleSection := MDLFooterDropdownSection new ].
	list := links collect: [ :anAssociation | MDLMegaFooterLinksList new addLinks: anAssociation ].
	middleSection addLinksLists: list
]

{ #category : #'public api' }
MDLFooter >> atTopLeftAddComponents: components [
	"Components must be an array of WAComponents (render: will be called on them)"
	topLeftSection isNilSection
		ifTrue: [ topLeftSection := MDLFooterComponentsSection new ].
	topLeftSection := topLeftSection addComponents: components
]

{ #category : #'public api' }
MDLFooter >> atTopRightAddComponents: components [
	"Components must be an array of WAComponents (render: will be called on them)"
	topRightSection isNilSection
		ifTrue: [ topRightSection := MDLFooterComponentsSection new ].
	topRightSection := topRightSection addComponents: components
]

{ #category : #initialization }
MDLFooter >> initialize [
	super initialize.
	topLeftSection := MDLFooterNilSection new.
	topRightSection := MDLFooterNilSection new.
	middleSection := MDLFooterNilSection new.
	bottomSection := MDLFooterNilSection new
]

{ #category : #rendering }
MDLFooter >> renderContentOn: html [
	html mdlFooter: [ 
		html mdlFooterTopSection: [ 
			html mdlFooterLeftSection: [ topLeftSection renderSectionOn: html ].
			html mdlFooterRightSection: [ topRightSection renderSectionOn: html ] ].
		html mdlFooterMiddleSection: [ middleSection renderSectionOn: html ].
		html mdlFooterBottomSection: [ bottomSection renderSectionOn: html ] ]
]
