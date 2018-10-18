"
I am a button use to change the content of a panel.

Description
-------------------

Sometimes we show contents inside a panel but we want to change. This button is here to do that. 

I was designed at the beginning for the code analyzer but can evolve.

I should probably be use inside a MDLVerticalToolbar. 

Example
--------------------

	MDLPanelSwitcherButton
		text: 'Tags'
		tooltip: 'Show the Tag panel'
		panelId: #'my-browser-right-panel'
		actionBlock: [ :r | 
			self setTagPanel.
			self renderRightPanelOn: r ]
		onComplete: 'var button = $("".fold-button""); if(button.attr(""data-fold"") == ""true""){button.click()}'
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	actionBlock:			<aBlock>	I am a block taking a canvas as parameter. I should draw the content on the panel on this canvas.
	onCompleteJs:		<aString>	I am an optional script to add after the redraw is done.
	panelId:				<aSymbol>	I am the dom id of the panel to redraw.
	text:				<aString>	I am the text to display on the button.
	tooltip:				<aString>	I am an optional tooltip.
"
Class {
	#name : #MDLPanelSwitcherButton,
	#superclass : #WAComponent,
	#instVars : [
		'panelId',
		'text',
		'actionBlock',
		'tooltip',
		'onCompleteJs',
		'id',
		'owner',
		'isSelected'
	],
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #'instance creation' }
MDLPanelSwitcherButton class >> text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock [
	^ self
		text: aString
		tooltip: aTranslatedString
		panelId: anId
		actionBlock: aBlock
		onComplete: nil
]

{ #category : #'instance creation' }
MDLPanelSwitcherButton class >> text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString [
	^ self
		text: aString
		tooltip: aTranslatedString
		panelId: anId
		actionBlock: aBlock
		onComplete: aJSString
		id: nil
]

{ #category : #'instance creation' }
MDLPanelSwitcherButton class >> text: aString tooltip: aTranslatedString panelId: anId actionBlock: aBlock onComplete: aJSString id:  anIdBis [
	^ self new
		text: aString;
		id: anIdBis;
		tooltip: aTranslatedString;
		panelId: anId;
		actionBlock: aBlock;
		onCompleteJs: aJSString;
		yourself
]

{ #category : #accessing }
MDLPanelSwitcherButton >> actionBlock [
	^ actionBlock
]

{ #category : #accessing }
MDLPanelSwitcherButton >> actionBlock: anObject [
	actionBlock := anObject
]

{ #category : #accessing }
MDLPanelSwitcherButton >> id [
	^ id
]

{ #category : #accessing }
MDLPanelSwitcherButton >> id: anObject [
	id := anObject
]

{ #category : #initialization }
MDLPanelSwitcherButton >> initialize [
	super initialize.
	self isSelected: false
]

{ #category : #accessing }
MDLPanelSwitcherButton >> isSelected [
	^ isSelected
]

{ #category : #accessing }
MDLPanelSwitcherButton >> isSelected: aBoolean [ 
	isSelected := aBoolean 
]

{ #category : #javascript }
MDLPanelSwitcherButton >> jsOnComplete [
	^ self onCompleteJs ifNotNil: [ :script | script js ]
]

{ #category : #accessing }
MDLPanelSwitcherButton >> onCompleteJs [
	^ onCompleteJs
]

{ #category : #accessing }
MDLPanelSwitcherButton >> onCompleteJs: anObject [
	onCompleteJs := anObject
]

{ #category : #accessing }
MDLPanelSwitcherButton >> owner [
	^ owner
]

{ #category : #accessing }
MDLPanelSwitcherButton >> owner: aSYNVerticalToolbar [ 
	owner := aSYNVerticalToolbar
]

{ #category : #accessing }
MDLPanelSwitcherButton >> panelId [
	^ panelId
]

{ #category : #accessing }
MDLPanelSwitcherButton >> panelId: anObject [
	panelId := anObject
]

{ #category : #rendering }
MDLPanelSwitcherButton >> renderContentOn: html [
	html div
		class: 'panel-switcher-button';
		id: self id;
		with: [ html div
				id: html nextId;
				class: 'panel-switcher-button__content';
				class: 'panel-switcher-selected' if: self isSelected;
				onClick:
					'$(".panel-switcher-selected").removeClass("panel-switcher-selected"); $(this).addClass("panel-switcher-selected")'
						js
						,
							((html jQuery id: self panelId) load
								html: [ :r | 
									self owner resetButtonsSelection.
									self select.
									self actionBlock value: r ];
								onComplete: self jsOnComplete);
				with: self text ].
	self renderTooltipFor: html lastId on: html
]

{ #category : #rendering }
MDLPanelSwitcherButton >> renderTooltipFor: anId on: html [
	self tooltip ifNil: [ ^ self ].
	
	html mdlTooltip
		large;
		for: anId;
		with: self tooltip
]

{ #category : #options }
MDLPanelSwitcherButton >> select [
	self isSelected: true
]

{ #category : #accessing }
MDLPanelSwitcherButton >> text [
	^ text
]

{ #category : #accessing }
MDLPanelSwitcherButton >> text: anObject [
	text := anObject
]

{ #category : #accessing }
MDLPanelSwitcherButton >> tooltip [
	^ tooltip
]

{ #category : #accessing }
MDLPanelSwitcherButton >> tooltip: anObject [
	tooltip := anObject
]
