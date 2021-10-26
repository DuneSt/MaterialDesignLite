Class {
	#name : #MDLIconDrawerSection,
	#superclass : #MDLLinkingLayoutSection,
	#category : 'Material-Design-Lite-Widgets-Header'
}

{ #category : #accessing }
MDLIconDrawerSection >> links: someLinks [
	"here links must be seaside components"
	^ super links: someLinks 
]

{ #category : #'as yet unclassified' }
MDLIconDrawerSection >> renderContentOn: html [
	html
		mdlLayoutDrawer: [ 
			html mdlLayoutTitle
				style: 'border-bottom: 1px solid #e0e0e0; margin: 0px 0px 16px 0px';
				with: layout title.
			self renderLinksOn: html ]
]

{ #category : #'as yet unclassified' }
MDLIconDrawerSection >> renderLinksOn: html [
	links do: [ :aLink | html render: aLink ]
]
