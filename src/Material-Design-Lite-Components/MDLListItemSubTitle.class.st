"
Description
--------------------

I am a brush to create a subtitle insude a MDL list.

Example
--------------------

	html mdlList
		style: 'width: 300px';
		with: [ html mdlListItem
				twoLine;
				with: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Bryan Cranston'.
							html mdlListItemSubTitle: 'Appears in 62 Episodes' ].
					html
						mdlListSecondaryContent: [ html mdlListItemSecondaryInfo: 'Actor'.
							html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: #star ] ] ].
			html mdlListItem
				twoLine;
				with: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Aaron Paul'.
							html mdlListItemSubTitle: 'Appears in 62 Episodes' ].
					html
						mdlListSecondaryContent: [ html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: #star ] ] ].
			html mdlListItem
				twoLine;
				with: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Bob Odenkirk'.
							html mdlListItemSubTitle: 'Appears in 62 Episodes' ].
					html
						mdlListSecondaryContent: [ html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: #star ] ] ] ]
"
Class {
	#name : #MDLListItemSubTitle,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItemSubTitle >> initialize [
	super initialize.
	self class: 'mdl-list__item-sub-title'
]

{ #category : #accessing }
MDLListItemSubTitle >> tag [
	^'span'
]
