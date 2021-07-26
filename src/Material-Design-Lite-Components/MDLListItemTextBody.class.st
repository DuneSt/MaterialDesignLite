"
Description
--------------------

I am a brush to create a text container inside a MDL list.

Example
--------------------

	| actors |
	actors := OrderedDictionary
		with: 'Bryan Cranston' 	-> 'Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'
		with: 'Aaron Paul' 	-> 'Aaron Paul played the role of Jesse in Breaking Bad. He also featured in the ""Need For Speed"" Movie.'
		with: 'Bob Odenkirk'	-> 'Bob Odinkrik played the role of Saul in Breaking Bad. Due to public fondness for the character, Bob stars in his own show now, called ""Better Call Saul"".'.
	html mdlList
		style: 'width: 650px';
		with: [ actors
				keysAndValuesDo: [ :actor :descr | 
					html mdlListItem
						threeLine;
						with: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemAvatar;
										with: #person.
									html text: actor.
									html mdlListItemTextBody: descr ].
							html
								mdlListSecondaryContent: [ html mdlListItemSecondaryAction
										url: '#';
										with: [ html mdlIcon: #star ] ] ] ] ]
"
Class {
	#name : #MDLListItemTextBody,
	#superclass : #WATagBrush,
	#category : #'Material-Design-Lite-Components-List'
}

{ #category : #initialization }
MDLListItemTextBody >> initialize [
	super initialize.
	self class: 'mdl-list__item-text-body'
]

{ #category : #accessing }
MDLListItemTextBody >> tag [
	^ 'span'
]
