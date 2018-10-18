Class {
	#name : #MDLMGReportChooser,
	#superclass : #GRObject,
	#instVars : [
		'bordered',
		'stiped',
		'condensed',
		'showBatchFirstLast'
	],
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #accessing }
MDLMGReportChooser >> bordered [
	^ bordered
]

{ #category : #accessing }
MDLMGReportChooser >> bordered: anObject [
	bordered := anObject
]

{ #category : #'magrittes-descriptions' }
MDLMGReportChooser >> borderedDescription [
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Bordered';
		group: 'Bootstrap options' ;
		accessor: #bordered;
		comment: 'Rounds corners and adds outer border';
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself
]

{ #category : #accessing }
MDLMGReportChooser >> condensed [
	^ condensed
]

{ #category : #accessing }
MDLMGReportChooser >> condensed: anObject [
	condensed := anObject
]

{ #category : #'magrittes-descriptions' }
MDLMGReportChooser >> condensedDescription [
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Condensed';
		group: 'Bootstrap options' ;
		accessor: #condensed;
		comment: 'Cuts vertical padding in half';
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself
]

{ #category : #'magrittes-descriptions' }
MDLMGReportChooser >> descriptionContainer [
	<magritteContainer>
	^ super descriptionContainer
		componentRenderer: MDLMAFormRenderer;
		yourself
]

{ #category : #accessing }
MDLMGReportChooser >> showBatchFirstLast [
	^ showBatchFirstLast
]

{ #category : #accessing }
MDLMGReportChooser >> showBatchFirstLast: anObject [
	showBatchFirstLast := anObject
]

{ #category : #'magrittes-descriptions' }
MDLMGReportChooser >> showBatchFirstLastDescription [
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Show first/last';
		accessor: #showBatchFirstLast;
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself
]

{ #category : #accessing }
MDLMGReportChooser >> striped [
	^ stiped
]

{ #category : #accessing }
MDLMGReportChooser >> striped: anObject [
	stiped := anObject
]

{ #category : #'magrittes-descriptions' }
MDLMGReportChooser >> stripedDescription [
	<magritteDescription>
	^ MABooleanDescription new 
		label: 'Striped';
		accessor: #striped;
		comment: 'Adds light gray background color to odd rows';
		default: false;
		componentClass: MDLMACheckboxComponent ;
		yourself
]
