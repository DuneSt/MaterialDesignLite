"
I'm representing list screen
"
Class {
	#name : #MDLListsScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLListsScreen class >> description [
	^ 'Customizable scrollable lists.'
]

{ #category : #accessing }
MDLListsScreen class >> icon [
		^ 'complistsPng'
]

{ #category : #accessing }
MDLListsScreen class >> title [
	^ 'Lists'
]

{ #category : #sections }
MDLListsScreen >> avatarActionsList [
	^ OrderedDictionary new
		add: 'Avatars and actions ' -> #renderAvatarActionsListOn:;
		yourself
]

{ #category : #sections }
MDLListsScreen >> avatarControlsList [
	^ OrderedDictionary new
		add: 'Avatars and controls ' -> #renderAvatarControlsListOn:;
		yourself
]

{ #category : #sections }
MDLListsScreen >> iconsList [
	^ OrderedDictionary new
		add: 'Icons ' -> #renderIconsListOn:;
		yourself
]

{ #category : #demos }
MDLListsScreen >> renderAvatarActionsListOn: html [
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
]

{ #category : #demos }
MDLListsScreen >> renderAvatarControlsListOn: html [
	html mdlList
		style: 'width: 300px';
		with: [ html
				mdlListItem: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Bryan Cranston' ].
					html mdlListItemSecondaryAction
						with: [ html mdlCheckboxContainer
								for: html nextId;
								with: [ html mdlCheckbox
										id: html lastId;
										value: true ] ] ].
			html
				mdlListItem: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Aaron Paul' ].
					html mdlListItemSecondaryAction
						with: [ html mdlRadioContainer
								style: 'display: inline;';
								for: html nextId;
								rippleEffect;
								with: [ html mdlRadioButton
										id: html lastId;
										value: '1';
										name: 'options' ] ] ].
			html
				mdlListItem: [ html
						mdlListPrimaryContent: [ html mdlIcon
								listItemAvatar;
								with: #person.
							html text: 'Bob Odenkirk' ].
					html mdlListItemSecondaryAction
						with: [ html mdlSwitchContainer
								for: html nextId;
								with: [ html mdlSwitch
										id: html lastId;
										value: '1'.
									html mdlSwitchLabel ] ] ] ]
]

{ #category : #demos }
MDLListsScreen >> renderIconsListOn: html [
	html mdlList
		style: 'width: 300px';
		with: [ #('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk')
				do: [ :name | 
					html
						mdlListItem: [ html
								mdlListPrimaryContent: [ html mdlIcon
										listItemIcon;
										with: #person.
									html text: name ] ] ] ]
]

{ #category : #rendering }
MDLListsScreen >> renderScreenContentOn: html [
	self
		render: self simpleList on: html;
		render: self iconsList on: html;
		render: self avatarActionsList on: html;
		render: self avatarControlsList on: html;
		render: self twoLineList on: html;
		render: self threeLineList on: html
]

{ #category : #demos }
MDLListsScreen >> renderSimpleListOn: html [
	html mdlList
		style: 'width: 300px';
		with: [ 
			#('Bryan Cranston' 'Aaron Paul' 'Bob Odenkirk') do: [ :name | html mdlListItem: [ html mdlListPrimaryContent: name ] ] ]
]

{ #category : #demos }
MDLListsScreen >> renderThreeLineListOn: html [
	| actors |
	actors := OrderedDictionary
		with: 'Bryan Cranston' 	-> 'Bryan Cranston played the role of Walter in Breaking Bad. He is also known for playing Hal in Malcom in the Middle.'
		with: 'Aaron Paul' 	-> 'Aaron Paul played the role of Jesse in Breaking Bad. He also featured in the "Need For Speed" Movie.'
		with: 'Bob Odenkirk'	-> 'Bob Odinkrik played the role of Saul in Breaking Bad. Due to public fondness for the character, Bob stars in his own show now, called "Better Call Saul".'.
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
]

{ #category : #demos }
MDLListsScreen >> renderTwoLineListOn: html [
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
]

{ #category : #sections }
MDLListsScreen >> simpleList [
	^ OrderedDictionary new
		add: 'Simple list ' -> #renderSimpleListOn:;
		yourself
]

{ #category : #sections }
MDLListsScreen >> threeLineList [
	^ OrderedDictionary new
		add: 'Three line ' -> #renderThreeLineListOn:;
		yourself
]

{ #category : #sections }
MDLListsScreen >> twoLineList [
	^ OrderedDictionary new
		add: 'Two line ' -> #renderTwoLineListOn:;
		yourself
]
