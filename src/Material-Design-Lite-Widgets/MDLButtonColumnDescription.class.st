Class {
	#name : #MDLButtonColumnDescription,
	#superclass : #MDLTableColumnDescription,
	#instVars : [
		'onClickBlock',
		'iconName',
		'tooltip'
	],
	#category : #'Material-Design-Lite-Widgets-Table'
}

{ #category : #accessing }
MDLButtonColumnDescription >> iconName [
	^ iconName
]

{ #category : #accessing }
MDLButtonColumnDescription >> iconName: anObject [
	iconName := anObject
]

{ #category : #accessing }
MDLButtonColumnDescription >> onClickBlock [
	^ onClickBlock
]

{ #category : #accessing }
MDLButtonColumnDescription >> onClickBlock: anObject [
	onClickBlock := anObject
]

{ #category : #rendering }
MDLButtonColumnDescription >> render: row on: html [
	| buttonId |
	html mdlTableCell
		with: [ 
			html mdlButton
				id: (buttonId := (self generateIdUsing: html));
				onClick: (self onClickBlock value: html value: row);
				labelIcon: self iconName ].
	
	self tooltip ifNil: [ ^ self ].
	
	
	html mdlTooltip
		for: buttonId;
		with: [ html text: self tooltip ]
]

{ #category : #rendering }
MDLButtonColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		nonNumerical;
		with: self title.
]

{ #category : #accessing }
MDLButtonColumnDescription >> tooltip [
	^ tooltip
]

{ #category : #accessing }
MDLButtonColumnDescription >> tooltip: anObject [
	tooltip := anObject
]
