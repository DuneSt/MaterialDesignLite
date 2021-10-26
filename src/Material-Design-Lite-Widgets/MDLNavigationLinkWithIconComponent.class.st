Class {
	#name : #MDLNavigationLinkWithIconComponent,
	#superclass : #WAComponent,
	#instVars : [
		'icon',
		'label',
		'callback',
		'iconUrl'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLNavigationLinkWithIconComponent >> callback [
	^ callback
]

{ #category : #accessing }
MDLNavigationLinkWithIconComponent >> callback: anObject [
	callback := anObject
]

{ #category : #accessing }
MDLNavigationLinkWithIconComponent >> icon [
	^ icon
]

{ #category : #accessing }
MDLNavigationLinkWithIconComponent >> iconUrl: anObject [
	iconUrl := anObject
]

{ #category : #accessing }
MDLNavigationLinkWithIconComponent >> label [
	^ label
]

{ #category : #accessing }
MDLNavigationLinkWithIconComponent >> label: anObject [
	label := anObject
]

{ #category : #rendering }
MDLNavigationLinkWithIconComponent >> renderContentOn: html [
	html mdlNavigationLink
		style: 'margin: 8px 16px';
		callback: callback;
		with: [ html
				div: [ html image
						url: (iconUrl);"
						url: (MDLDemoLibrary urlOf: icon);"
						style: 'height: 46px; width: 46px; margin: 0px 10px;'.
					html span: label ] ]
]
