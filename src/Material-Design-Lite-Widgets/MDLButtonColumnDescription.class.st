"
I model a button column.

I add a button to each row which should perform an action concerning the row.

I perform my action in a callback which means that the page is refreshed when a button is clicked.

My #onClickBlock has a single argument: the row on which the action should be applied.

A #tooltip can bet set to display useful information to user about the purpose of my buttons.
"
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
		class: 'mdl-table-widget__cell--button';
		with: [ html mdlAnchorButton
				id: (buttonId := self generateIdUsing: html);
				callback: [ self onClickBlock value: row ];
				icon: self iconName ].
	
	self renderTooltipFor: buttonId on: html
]

{ #category : #rendering }
MDLButtonColumnDescription >> renderHeadingOn: html [
	(super renderHeadingOn: html)
		nonNumerical;
		with: self title.
]

{ #category : #rendering }
MDLButtonColumnDescription >> renderTooltipFor: buttonId on: html [
	self tooltip ifNil: [ ^ self ].
	html mdlTooltip
		for: buttonId;
		with: [ html text: self tooltip ]
]

{ #category : #accessing }
MDLButtonColumnDescription >> tooltip [
	^ tooltip
]

{ #category : #accessing }
MDLButtonColumnDescription >> tooltip: anObject [
	tooltip := anObject
]
