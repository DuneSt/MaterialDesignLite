"
I'm representing the menu components screen
"
Class {
	#name : #MDLMenusScreen,
	#superclass : #MDLComponentDemo,
	#category : 'Material-Design-Lite-Demo-Components'
}

{ #category : #accessing }
MDLMenusScreen class >> description [
	^ 'Lists of clickable actions.'
]

{ #category : #accessing }
MDLMenusScreen class >> icon [
		^'compmenusPng'
]

{ #category : #accessing }
MDLMenusScreen class >> title [
	^ 'Menus'
]

{ #category : #sections }
MDLMenusScreen >> bottomMenus [
	^ OrderedDictionary new
		add: 'Lower left' -> #renderLowerLeftMenuOn:;
		add: 'Lower right' -> #renderLowerRightMenuOn:;
		yourself
]

{ #category : #demos }
MDLMenusScreen >> renderLowerLeftMenuOn: html [
	html div
		class: 'container';
		shadow: 2;
		with: [ html div
				class: 'bar';
				with: [ html mdlButton icon
						id: #bottomLeftButton;
						with: [ html mdlIcon: #more_vert ].
					html mdlMenu
						bottomLeft;
						for: #bottomLeftButton;
						with: [ html mdlMenuItem: 'Some Action'.
							html mdlMenuItem
								fullBleedDivider;
								with: 'Another Action'.
							html mdlMenuItem
								disabled;
								with: 'Disabled Action'.
							html mdlMenuItem: 'Yet Another Action' ] ].
			html div class: 'background' ]
]

{ #category : #demos }
MDLMenusScreen >> renderLowerRightMenuOn: html [
	html div
		class: 'container';
		shadow: 2;
		with: [ html div
				class: 'bar';
				with: [ html div
						class: 'wrapper';
						with: [ html mdlButton icon
								id: #bottomRightButton;
								with: [ html mdlIcon: #more_vert ].
							html mdlMenu
								bottomRight;
								for: #bottomRightButton;
								with: [ html mdlMenuItem: 'Some Action'.
									html mdlMenuItem
										fullBleedDivider;
										with: 'Another Action'.
									html mdlMenuItem
										disabled;
										with: 'Disabled Action'.
									html mdlMenuItem: 'Yet Another Action' ] ] ].
			html div class: 'background' ]
]

{ #category : #rendering }
MDLMenusScreen >> renderScreenContentOn: html [
	html paragraph: [ html small: 'Note: The menu requires a non-static positioned parent element. Positioning options may not work properly if the menu is inside of a statically positioned node.' ].
	self
		render: self bottomMenus on: html;
		render: self topMenus on: html
]

{ #category : #demos }
MDLMenusScreen >> renderTopLeftMenuOn: html [
	html div
		class: 'container';
		shadow: 2;
		with: [ html div class: 'background'.
			html div
				class: 'bar';
				with: [ html mdlButton icon
						id: #topLeftButton;
						with: [ html mdlIcon: #more_vert ].
					html mdlMenu
						topLeft;
						for: #topLeftButton;
						with: [ html mdlMenuItem: 'Some Action'.
							html mdlMenuItem
								fullBleedDivider;
								with: 'Another Action'.
							html mdlMenuItem
								disabled;
								with: 'Disabled Action'.
							html mdlMenuItem: 'Yet Another Action' ] ] ]
]

{ #category : #demos }
MDLMenusScreen >> renderTopRightMenuOn: html [
	html div
		class: 'container';
		shadow: 2;
		with: [ html div class: 'background'.
			html div
				class: 'bar';
				with: [ html div
						class: 'wrapper';
						with: [ html mdlButton icon
								id: #topRightButton;
								with: [ html mdlIcon: #more_vert ].
							html mdlMenu
								topRight;
								for: #topRightButton;
								with: [ html mdlMenuItem: 'Some Action'.
									html mdlMenuItem
										fullBleedDivider;
										with: 'Another Action'.
									html mdlMenuItem
										disabled;
										with: 'Disabled Action'.
									html mdlMenuItem: 'Yet Another Action' ] ] ] ]
]

{ #category : #sections }
MDLMenusScreen >> topMenus [
	^ OrderedDictionary new
		add: 'Top left' -> #renderTopLeftMenuOn:;
		add: 'Top right' -> #renderTopRightMenuOn:;
		yourself
]
