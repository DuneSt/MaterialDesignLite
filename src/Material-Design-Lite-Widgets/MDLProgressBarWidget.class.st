"
Description
--------------------

I am a widget that display a progress bar. This progress bar will be linked to a progression block.

Public API and Key Messages
--------------------

- #hidden 		To hide the progress bar at the page oppening

Examples
--------------------

	
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	hyde:					<aBoolean>		If true, the progress bar will be hidden at the rendering
	progressionBlock:		<BlockClosure>	This must have 0 parameter. It will be evaluated each time to know the progression of the bar. The returned value must be within 0 and 1.
	refreshTime:				<Duration>		The time between two evaluations of the progression block. A short time will refresh the bar more ofter but will require more work from the server

"
Class {
	#name : #MDLProgressBarWidget,
	#superclass : #MDLWidget,
	#instVars : [
		'progressionBlock',
		'refreshTime',
		'hide'
	],
	#category : 'Material-Design-Lite-Widgets-Loading'
}

{ #category : #'instance creation' }
MDLProgressBarWidget class >> progression: aProgressionBlock [
	^ self new
		progressionBlock: aProgressionBlock;
		yourself
]

{ #category : #'instance creation' }
MDLProgressBarWidget class >> progression: aProgressionBlock every: aDuration [
	^ self new
		progressionBlock: aProgressionBlock;
		refreshTime: aDuration;
		yourself
]

{ #category : #options }
MDLProgressBarWidget >> hidden [
	self hide: true
]

{ #category : #accessing }
MDLProgressBarWidget >> hide [
	^ hide
]

{ #category : #accessing }
MDLProgressBarWidget >> hide: aBoolean [
	hide := aBoolean
]

{ #category : #accessing }
MDLProgressBarWidget >> hyde [
	self deprecated: 'Uses #hide instead' transformWith: '`@receiver hyde' -> '`@receiver hide'.
	^ self hide
]

{ #category : #accessing }
MDLProgressBarWidget >> hyde: aBoolean [
	self deprecated: 'Uses #hide: instead' transformWith: '`@receiver hyde: `@statements1' -> '`@receiver hide: `@statements1'.
	^ self hide: aBoolean
]

{ #category : #initialization }
MDLProgressBarWidget >> initialize [
	super initialize.
	self refreshTime: 1 seconds.
	self hide: false
]

{ #category : #javascript }
MDLProgressBarWidget >> progressScript: html [
	self flag: #todo.	"Cyril: I think we can clean a little this part. Maybe it should go partly in a javascript file"
	^ html document
		addLoadScript:
			('var interval' , id , ' = setInterval(function(){') js
				,
					(html jQuery getJson
						json: [ :json | 
							json
								object: [ json key: #progress value: ((100 * self progressionBlock value) asInteger min: 100) ] ];
						onSuccess:
							'if(arguments[0].progress >= 100) window.clearInterval(interval' , id
								,
									');
				document.querySelector(''#' , id
								, ''').MaterialProgress.setProgress(arguments[0].progress);')
				, (';}, ' , self refreshTime asMilliSeconds asString , ');') js
]

{ #category : #accessing }
MDLProgressBarWidget >> progressionBlock [
	^ progressionBlock
]

{ #category : #accessing }
MDLProgressBarWidget >> progressionBlock: aBlock [
	progressionBlock := aBlock
]

{ #category : #accessing }
MDLProgressBarWidget >> refreshTime [
	^ refreshTime
]

{ #category : #accessing }
MDLProgressBarWidget >> refreshTime: aDuration [
	refreshTime := aDuration
]

{ #category : #rendering }
MDLProgressBarWidget >> renderContentOn: html [
	self ensureId: html.
	self flag: #todo.	"This need some cleaning."
	"The style should be in a css file"
	html mdlProgressBar
		style: 'margin: auto;' , (self hide ifTrue: [ 'display: none;' ] ifFalse: [ '' ]);
		id: id.
	self hide ifFalse: [ self progressScript: html ]
]

{ #category : #javascript }
MDLProgressBarWidget >> showScript: html [
	^ (html jQuery id: self id) show , (self progressScript: html)
]
