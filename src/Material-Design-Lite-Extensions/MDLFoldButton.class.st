"
Description
--------------------

Component used to fold/unfold a MDLVerticalToolbar.
"
Class {
	#name : #MDLFoldButton,
	#superclass : #WAComponent,
	#instVars : [
		'onCompleteScript',
		'divId',
		'isFolded'
	],
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #'instance creation' }
MDLFoldButton class >> for: aCssId [
	^ self for: aCssId onComplete: nil
]

{ #category : #'instance creation' }
MDLFoldButton class >> for: aCssId onComplete: aScript [
	^ self new
		divId: aCssId;
		onCompleteScript: aScript;
		yourself
]

{ #category : #accessing }
MDLFoldButton >> divId [
	^ divId
]

{ #category : #accessing }
MDLFoldButton >> divId: anObject [
	divId := anObject
]

{ #category : #actions }
MDLFoldButton >> fold [
	self isFolded: true
]

{ #category : #accessing }
MDLFoldButton >> iconLabel [
	^ #swap_horiz
]

{ #category : #initialization }
MDLFoldButton >> initialize [
	super initialize.
	self unfold
]

{ #category : #accessing }
MDLFoldButton >> isFolded [
	^ isFolded
]

{ #category : #accessing }
MDLFoldButton >> isFolded: anObject [
	isFolded := anObject
]

{ #category : #accessing }
MDLFoldButton >> isSelected [
	"To be polymorphic with MDLPanelSwitcherButton"
	
	^ false
]

{ #category : #accessing }
MDLFoldButton >> isSelected: aBoolean [ 
	"Just to be polymorph with other buttons. I do not need to keep my selection."
]

{ #category : #accessing }
MDLFoldButton >> onCompleteScript [
	^ onCompleteScript ifNil: [ onCompleteScript := '' ]
]

{ #category : #accessing }
MDLFoldButton >> onCompleteScript: anObject [
	onCompleteScript := anObject
]

{ #category : #accessing }
MDLFoldButton >> owner: aSYNVerticalToolbar [ 
	"Just to be polymorph. I do nothing"
]

{ #category : #rendering }
MDLFoldButton >> renderContentOn: html [
	html mdlIcon
		id: html nextId;
		attributeAt: 'data-fold' put: self isFolded asString;
		attributeAt: 'data-for' put: self divId;
		class: #'fold-button';
		onClick:
			(html jQuery ajax
				context: 'this' js;
				callback: [ self isFolded: self isFolded not ];
				onComplete: self showAndHide);
		with: self iconLabel.
	html mdlTooltip
		large;
		for: html lastId;
		with: 'Toggle right panel'.
	self isFolded
		ifTrue: [ html document addLoadScript: ('document.getElementById(''' , self divId allButFirst , ''').style.width=''0'';' , self onCompleteScript) js ]
]

{ #category : #options }
MDLFoldButton >> resetVisusOnFold [
	self
		onCompleteScript:
			'setTimeout(function(){for(i=0;i<visus.length;i++)visus[i].visu.resize();for(i=0;i<visus.length;i++)visus[i].visu.fit();}, 1000)'
]

{ #category : #javascript }
MDLFoldButton >> showAndHide [
	^ ('$(".visualization").children().width(0);if(this.dataset.fold=="false"){this.dataset.fold="true";$(this.dataset.for)[0].style.width="0";}else{this.dataset.fold="false";$(this.dataset.for)[0].style.width="";};'
		, self onCompleteScript) js
]

{ #category : #actions }
MDLFoldButton >> unfold [
	self isFolded: false
]
