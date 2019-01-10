"
Description
--------------------

A header for the MDL for seaside demo with all the pages.
"
Class {
	#name : #MDLDemoHeader,
	#superclass : #MDLDemoComponent,
	#instVars : [
		'activeTab'
	],
	#category : #'Material-Design-Lite-Demo-Core'
}

{ #category : #accessing }
MDLDemoHeader >> possiblePages [
	^ MDLDemoPage pagesToDisplay
]

{ #category : #rendering }
MDLDemoHeader >> renderContentOn: html [
	html mdlLayoutHeader
		waterfall;
		with: [ html
				mdlLayoutHeaderRow: [ html mdlNavigationLink
						callback: [ "Just refresh" ];
						with: [ html
								mdlLayoutTitle: [ html image
										style: 'width: 40px; height: 40px;';
										url: (MDLDemoLibrary urlOf: 'logoSvg').
									html text: '    Material Design Lite for Seaside' ] ].
					html mdlLayoutSpacer.
					html text: '	Version ' , self version.
					self renderForkMeOnGithubOn: html ].
			html
				mdlLayoutTabBar: [ self possiblePages
						do: [ :aClass | 
							html mdlLayoutTab
								callback: [ self displayInstanceOf: aClass ];
								isActiveIf: aClass = self rootComponent componentToDisplay class;
								with: aClass pageName ] ] ]
]

{ #category : #rendering }
MDLDemoHeader >> renderForkMeOnGithubOn: html [
	html anchor
		url: 'https://github.com/DuneSt/MaterialDesignLite';
		with: [ html image
				style: 'position: absolute; top: 0; right: 0; border: 0; z-index: 5;width: 100px; height: 100px;';
				url: 'https://s3.amazonaws.com/github/ribbons/forkme_right_darkblue_121621.png';
				altText: 'Fork me on GitHub' ].
	html text: '            '
]
