Class {
	#name : #MDLButtonColumnDescription,
	#superclass : #MDLTableColumnDescription,
	#instVars : [
		'onClickBlock',
		'iconName',
		'toolTip'
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
	| id |
	html mdlTableCell
		style: 'width: 1px;'; flag: #TODO;
		with: [ 
			html mdlButton
				id: (id := 'button-',(self generateIdUsing: html));
				onClick: (self onClickBlock value: html value: row);
				labelIcon: self iconName ].
	
	self toolTip ifNil: [ ^ self ].
	
	
	html mdlTooltip
		for: id;
		with: [ html text: self toolTip ]
]

{ #category : #rendering }
MDLButtonColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		nonNumerical;
		with: self title.
]

{ #category : #accessing }
MDLButtonColumnDescription >> toolTip [
	^ toolTip
]

{ #category : #accessing }
MDLButtonColumnDescription >> toolTip: anObject [
	toolTip := anObject
]
