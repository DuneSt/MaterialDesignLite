Class {
	#name : #MDLExpansionPanel,
	#superclass : #MDLWidget,
	#instVars : [
		'title',
		'description',
		'expandedBlock',
		'isExpanded'
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
		ifTrue: [ 'expand_less' ]
		ifFalse: [ 'expand_more' ]
]

{ #category : #initialization }
MDLExpansionPanel >> initialize [
	super initialize.
	self isExpanded: false
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
MDLExpansionPanel >> renderContentOn: html [
	self ensureId: html.
	
	html mdlGrid
		id: self id;
		shadow: 2;
		with: [ html div
				class: 'mdl-expansion-panel__header';
				style: 'width: 100%;'; flag: #TODO; "Move to stylesheet."
				onClick: ((html jQuery id: self id) parent load
								html: [ :ajaxHtmlCanvas |
									self toggleExpansion.
									ajaxHtmlCanvas render: self ]);
				with: [ html mdlGrid
						with: [ html mdlCell
								size: 5;
								with: [ html div
										class: 'mdl-expansion-panel__title';
										style: 'font-weight: bold;'; flag: #TODO; "Move to stylesheet."
										with: self title ].
							html mdlCell
								size: 5;
								with: [ html div
										class: 'mdl-expansion-panel__description';
										with: self description ].
							html mdlCell
								size: 2;
								with: [ 
									html mdlIcon
										class: 'mdl-expansion-panel__icon';
										style: 'float: right;'; flag: #TODO; "Move to stylesheet."
										with: self expansionIcon ] ].
					html div
						class: 'mdl-expansion-panel__content';
						with: [ self isExpanded
								ifTrue: [ html mdlGrid
										with: [ html mdlCell
												size: 12;
												with: [ self expandedBlock value: html ] ] ] ] ] ]
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
