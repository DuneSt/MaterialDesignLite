"
Description
--------------------

I am a brush to create a MDL list.

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
	#name : #MDLList,
	#superclass : #WAUnorderedListTag,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLList >> initialize [
	super initialize.
	self class: 'mdl-list'
]
