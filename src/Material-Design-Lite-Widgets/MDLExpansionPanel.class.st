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
		'onExpandBlock',
		'onFoldBlock'
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
		isExpanded: false;
		expandIcon: 'expand_more';
		foldIcon: 'expand_less';
		onFoldBlock: [ :htmlCanvas | htmlCanvas jQuery noop ];
		onExpandBlock: [ :htmlCanvas | htmlCanvas jQuery noop ]
]

{ #category : #accessing }
MDLExpansionPanel >> isExpanded [
	^ isExpanded
]

{ #category : #accessing }
MDLExpansionPanel >> isExpanded: anObject [
	isExpanded := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> onExpandBlock [
	^ onExpandBlock
]

{ #category : #accessing }
MDLExpansionPanel >> onExpandBlock: anObject [
	onExpandBlock := anObject
]

{ #category : #accessing }
MDLExpansionPanel >> onFoldBlock [
	^ onFoldBlock
]

{ #category : #accessing }
MDLExpansionPanel >> onFoldBlock: anObject [
	onFoldBlock := anObject
]

{ #category : #rendering }
MDLExpansionPanel >> renderContentOn: html [
	self ensureId: html.
	html mdlGrid
		id: self id;
		shadow: 2;
		with: [ html div
				class: 'mdl-expansion-panel__header';
				style: 'width: 100%;';flag: #TODO;"Move to stylesheet."
					onClick: (self toggleAjaxScriptOn: html);
				with: [ html mdlGrid
						with: [ html mdlCell
								size: 5;
								with: [ html div
										class: 'mdl-expansion-panel__title';
										style: 'font-weight: bold;';
										flag: #TODO;
										"Move to stylesheet."
											with: self title ].
							html mdlCell
								size: 5;
								with: [ html div
										class: 'mdl-expansion-panel__description';
										with: self description ].
							html mdlCell
								size: 2;
								with: [ html mdlIcon
										class: 'mdl-expansion-panel__icon';
										style: 'float: right;';
										flag: #TODO;
										"Move to stylesheet."
											with: self expansionIcon ] ] ].
					html div
						class: 'mdl-expansion-panel__content';
						with: [ self isExpanded
								ifTrue: [ html mdlGrid
										with: [ html mdlCell
												size: 12;
												with: [ self expandedBlock value: html ] ] ] ] ]
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
				ifTrue: [ jsScript << (self onFoldBlock value: html) ]
				ifFalse: [ jsScript << (self onExpandBlock value: html) ].
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
