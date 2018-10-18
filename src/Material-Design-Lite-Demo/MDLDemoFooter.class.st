"
Description
--------------------

A footer for the MDL for seaside demo with all the useful links.
"
Class {
	#name : #MDLDemoFooter,
	#superclass : #MDLDemoComponent,
	#category : 'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLDemoFooter >> links [
	^ OrderedDictionary
		with: 'Github' -> 'https://github.com/DuneSt/MaterialDesignLite'
		with: 'Pharo' -> 'http://pharo.org/'
		with: 'Seaside' -> 'https://github.com/SeasideSt/Seaside'
		with: 'Material Design' -> 'https://material.io/guidelines/'
		with: 'Material Design Lite' -> 'https://getmdl.io/'
]

{ #category : #rendering }
MDLDemoFooter >> renderContentOn: html [
	html
		mdlMiniFooter: [ html
				mdlMiniFooterLeftSection: [ html mdlLogo: 'Material Design Lite for Seaside'.
					html
						mdlMiniFooterLinkList: [ self links
								keysAndValuesDo: [ :label :url | 
									html
										listItem: [ html anchor
												url: url;
												with: label ] ] ] ].
			html mdlMiniFooterRightSection: [ html mdlMiniFooterLinkList: [ html listItem: [ html text: 'Contact: Cyril Ferlicot-Deblecque (cyril (a) ferlicot.me)' ] ] ] ]
]
