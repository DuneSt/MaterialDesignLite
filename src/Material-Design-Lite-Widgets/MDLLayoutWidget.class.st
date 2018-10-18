Class {
	#name : #MDLLayoutWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'title',
		'icon',
		'headerSection',
		'drawerSection',
		'contentBlock',
		'brush'
	],
	#category : 'Material-Design-Lite-Widgets-Header'
}

{ #category : #accessing }
MDLLayoutWidget >> contentBlock [
	^ contentBlock
]

{ #category : #accessing }
MDLLayoutWidget >> contentBlock: anObject [
	contentBlock := anObject
]

{ #category : #accessing }
MDLLayoutWidget >> drawerSection [
	^ drawerSection
]

{ #category : #accessing }
MDLLayoutWidget >> drawerSection: anObject [
	anObject layout: self.
	drawerSection := anObject
]

{ #category : #options }
MDLLayoutWidget >> fixedDrawer [
	^ brush fixedDrawer 
]

{ #category : #options }
MDLLayoutWidget >> fixedHeader [
	^ brush fixedHeader 
]

{ #category : #options }
MDLLayoutWidget >> fixedTabs [
	^ brush fixedTabs 
]

{ #category : #accessing }
MDLLayoutWidget >> headerSection [
	^ headerSection
]

{ #category : #accessing }
MDLLayoutWidget >> headerSection: anObject [
	anObject layout: self.
	headerSection := anObject
]

{ #category : #accessing }
MDLLayoutWidget >> icon [
	^ icon
]

{ #category : #accessing }
MDLLayoutWidget >> icon: anObject [
	icon := anObject
]

{ #category : #initialization }
MDLLayoutWidget >> initialize [
	super initialize.
	title := 'Define a title'.
	icon := MDLIconComponent new.
	headerSection := MDLNilLayoutSection new.
	drawerSection := MDLNilLayoutSection new.
	contentBlock := [ ].
	brush := MDLLayout new. 
]

{ #category : #options }
MDLLayoutWidget >> noDesktopDrawerButton [
	^ brush noDesktopDrawerButton 
]

{ #category : #options }
MDLLayoutWidget >> noDrawerButton [
	^ brush noDrawerButton 
]

{ #category : #rendering }
MDLLayoutWidget >> renderContentOn: html [
	(html brush: brush)
		with: [ 
			html render: headerSection.
			html render: drawerSection.
			html mdlLayoutContent: contentBlock ].
]

{ #category : #accessing }
MDLLayoutWidget >> title [
	^ title
]

{ #category : #accessing }
MDLLayoutWidget >> title: anObject [
	title := anObject
]
