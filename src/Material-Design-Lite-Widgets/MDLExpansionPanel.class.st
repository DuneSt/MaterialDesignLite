"
I am an expansion panel.

Basically, I have a title, a description, an icon and I can be folded or expanded to show additional information.

Though I provide default icons, one can set a different icon for when I am fold (#foldIcon:) or when I am expanded (#expandIcon:).

One can set my initial state via #isExpanded: or #isFolded:.

I can use different expansion strategies via #useDisplayNoneExpansionStrategy, #useAjaxExpansionStrategy. #useLazyExpansionStrategy.
See MDLExpansionStrategy subclasses for documentation about them.
My default strategy is MDLDisplayNoneStrategy.
"
Class {
	#name : #MDLExpansionPanel,
	#superclass : #MDLWidget,
	#instVars : [
		'title',
		'description',
		'expandedBlock',
		'isExpanded',
		'expandIcon',
		'foldIcon',
		'shadow',
		'expansionStrategy'
	],
	#category : #'Material-Design-Lite-Widgets-Expansion'
}

{ #category : #accessing }
MDLExpansionPanel >> description [
	^ description
]

{ #category : #accessing }
MDLExpansionPanel >> description: anObject [
	description := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> expandIcon [
	^ expandIcon
]

{ #category : #accessing }
MDLExpansionPanel >> expandIcon: anObject [
	expandIcon := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> expandedBlock [
	^ expandedBlock
]

{ #category : #accessing }
MDLExpansionPanel >> expandedBlock: anObject [
	expandedBlock := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> expansionIcon [
	^ self isExpanded
		ifTrue: [ self foldIcon ]
		ifFalse: [ self expandIcon ]
]

{ #category : #accessing }
MDLExpansionPanel >> expansionStrategy [
	^ expansionStrategy
]

{ #category : #accessing }
MDLExpansionPanel >> expansionStrategy: anObject [
	expansionStrategy := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> foldIcon [
	^ foldIcon
]

{ #category : #accessing }
MDLExpansionPanel >> foldIcon: anObject [
	foldIcon := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> icon: aString [
	self foldIcon: aString.
	self expandIcon: aString
]

{ #category : #initialization }
MDLExpansionPanel >> initialize [
	super initialize.
	self
		title: '';
		description: '';
		shadow: 2;
		isExpanded: false;
		expandIcon: 'expand_more';
		foldIcon: 'expand_less';
		useHideExpansionStrategy
]

{ #category : #accessing }
MDLExpansionPanel >> isExpanded [
	^ isExpanded
]

{ #category : #accessing }
MDLExpansionPanel >> isExpanded: anObject [
	isExpanded := anObject
]

{ #category : #rendering }
MDLExpansionPanel >> isFolded [
	^ self isExpanded not
]

{ #category : #accessing }
MDLExpansionPanel >> isFolded: aBoolean [
	self isExpanded: aBoolean not
]

{ #category : #rendering }
MDLExpansionPanel >> renderContentOn: html [
	self ensureId: html.
	html mdlExpansionPanel
		id: self id;
		shadow: self shadow;
		foldIf: self isFolded;
		with: [ self renderExpansionPanelHeader: html.
			self renderExpansionPanelContent: html ]
]

{ #category : #rendering }
MDLExpansionPanel >> renderExpansionPanelContent: html [
	^ html div
		class: 'mdl-expansion-panel__content';
		with: [ self expansionStrategy renderExpansionPanel: self contentOn: html ]
]

{ #category : #rendering }
MDLExpansionPanel >> renderExpansionPanelHeader: html [
	html div
		class: 'mdl-expansion-panel__header';
		onClick: (self expansionStrategy toggleScriptOn: html for: self);
		with: [ html div
				class: 'mdl-expansion-panel__header-title';
				with: self title.
			html div
				class: 'mdl-expansion-panel__header-description';
				with: self description.
			html mdlIcon
				class: 'mdl-expansion-panel__header-icon';
				with: self expansionIcon ]
]

{ #category : #accessing }
MDLExpansionPanel >> shadow [
	^ shadow
]

{ #category : #accessing }
MDLExpansionPanel >> shadow: anObject [
	shadow := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> title [
	^ title
]

{ #category : #accessing }
MDLExpansionPanel >> title: anObject [
	title := anObject
]

{ #category : #toggling }
MDLExpansionPanel >> toggleExpansion [
	self isExpanded: self isExpanded not
]

{ #category : #configuring }
MDLExpansionPanel >> useAjaxExpansionStrategy [
	self expansionStrategy: MDLAjaxExpansionStrategy new
]

{ #category : #configuring }
MDLExpansionPanel >> useAjaxExpansionStrategyOnExpand: onExpandBlock onFold: onFoldBlock [
	self expansionStrategy: (MDLAjaxExpansionStrategy new
									onExpandBlock: onExpandBlock;
									onFoldBlock: onFoldBlock;
									yourself)
]

{ #category : #configuring }
MDLExpansionPanel >> useHideExpansionStrategy [
	"Default strategy."
	self expansionStrategy: MDLHideExpansionStrategy new
]

{ #category : #configuring }
MDLExpansionPanel >> useLazyExpansionStrategy [
	self expansionStrategy: MDLLazyExpansionStrategy new
]
