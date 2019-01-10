"
Description
--------------------

I am a brush to create a primary content in a list item.

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
	#name : #MDLListPrimaryContent,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListPrimaryContent >> initialize [
	super initialize.
	self class: 'mdl-list__item-primary-content'
]

{ #category : #accessing }
MDLListPrimaryContent >> tag [
	^ 'span'
]
