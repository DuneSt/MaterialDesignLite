"
Description
--------------------

I am a brush to create a list item inside a list.

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
	#name : #MDLListItem,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItem >> initialize [
	super initialize.
	self class: 'mdl-list__item'
]

{ #category : #accessing }
MDLListItem >> tag [
	^ 'li'
]

{ #category : #options }
MDLListItem >> threeLine [
	self class: 'mdl-list__item--three-line'
]

{ #category : #options }
MDLListItem >> twoLine [
	self class: 'mdl-list__item--two-line'
]
