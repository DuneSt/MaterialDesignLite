"
Description
--------------------

I am a brush to create an action inside a MDL list.

Example
--------------------

	html mdlList
		style: 'width: 300px';
		with: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')
				do: [ :name | 
					html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: name ].
							html mdlListItemSecondaryAction
								url: '#';
								with: [ html mdlIcon: #star ] ] ] ]
"
Class {
	#name : #MDLListItemSecondaryAction,
	#superclass : #WAAnchorTag,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItemSecondaryAction >> initialize [
	super initialize.
	self class: 'mdl-list__item-secondary-action'
]
