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
		useDisplayNoneExpansionStrategy
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

{ #category : #rendering }
MDLExpansionPanel >> renderContentOn: html [
	self ensureId: html.
	html div
		id: self id;
		shadow: self shadow;
		class: 'mdl-expansion-panel';
		class: 'isFolded' if: self isFolded;
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

{ #category : #rendering }
MDLExpansionPanel >> toggleAjaxScriptOn: html [
	^ html jQuery
		script: [ :jsScript | 
			self isExpanded
				ifFalse: [ jsScript << (self onFoldBlock value: self value: html) ]
				ifTrue: [ jsScript << (self onExpandBlock value: self value: html) ].
			jsScript << (html jQuery id: self id) parent load
				html: [ :ajaxHtmlCanvas | 
					self toggleExpansion.
					ajaxHtmlCanvas render: self ];
				onComplete:
					('componentHandler.upgradeElements($("#{1}"));'
						format: {self id asString}) js ]
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
MDLExpansionPanel >> useDisplayNoneExpansionStrategy [
	"Default strategy."
	self expansionStrategy: MDLDisplayNoneExpansionStrategy new
]

{ #category : #configuring }
MDLExpansionPanel >> useLazyExpansionStrategy [
	self expansionStrategy: MDLLazyExpansionStrategy new
]
