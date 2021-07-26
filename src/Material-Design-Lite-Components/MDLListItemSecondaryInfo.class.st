"
Description
--------------------

I am a brush to create informations inside a MDL list.

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
	#name : #MDLListItemSecondaryInfo,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItemSecondaryInfo >> initialize [
	super initialize.
	self class: 'mdl-list__item-secondary-info'
]

{ #category : #accessing }
MDLListItemSecondaryInfo >> tag [
	^'span'
]
