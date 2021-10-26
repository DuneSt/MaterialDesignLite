"
Just a widget that allow to center a component and specify its size
"
Class {
	#name : #MDLContentCenterer,
	#superclass : #WAComponent,
	#instVars : [
		'component',
		'desktopSize',
		'tabletSize',
		'phoneSize'
	],
	#category : 'Material-Design-Lite-Widgets'
}

{ #category : #accessing }
MDLContentCenterer >> component [
	^ component
]

{ #category : #accessing }
MDLContentCenterer >> component: anObject [
	component := anObject
]

{ #category : #accessing }
MDLContentCenterer >> desktopSize [
	^ desktopSize
]

{ #category : #accessing }
MDLContentCenterer >> desktopSize: anObject [
	desktopSize := anObject
]

{ #category : #accessing }
MDLContentCenterer >> phoneSize [
	^ phoneSize
]

{ #category : #accessing }
MDLContentCenterer >> phoneSize: anObject [
	phoneSize := anObject
]

{ #category : #rendering }
MDLContentCenterer >> renderContentOn: html [
	html mdlGrid: [ 
		html mdlLayoutSpacer.
		html mdlCellDesktop: desktopSize tablet: tabletSize phone: phoneSize with: component.
		html mdlLayoutSpacer ].
	super renderContentOn: html
]

{ #category : #accessing }
MDLContentCenterer >> size: anObject [
	self desktopSize: anObject.
	self phoneSize: anObject.
	self tabletSize: anObject
]

{ #category : #accessing }
MDLContentCenterer >> tabletSize [
	^ tabletSize
]

{ #category : #accessing }
MDLContentCenterer >> tabletSize: anObject [
	tabletSize := anObject
]
