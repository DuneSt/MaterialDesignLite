"
Description
--------------------

I am a brush to create alerts.

Alerts are used to display feedback to users. They can have multiple kind of feedback such as:
- Neutral (default)
- Information 
- Success
- Warning
- Danger 

Examples
--------------------

	html mdlAlert
		beDanger;
		with: [ 
					html strong: 'This is a test message.'.
					html space.
					html text: 'This is the rest of the message that should not be strong.'.
					html anchor
						callback: [ 
									""Do nothing""
									 ];
						with: 'This is an anchor' ]


"
Class {
	#name : #MDLAlert,
	#superclass : #MDLDivTag,
	#category : #'Material-Design-Lite-Extensions-Alerts'
}

{ #category : #options }
MDLAlert >> beDanger [
	self class: 'mdl-alert__danger'
]

{ #category : #options }
MDLAlert >> beDefault [
	self class: 'mdl-alert__default'
]

{ #category : #options }
MDLAlert >> beInfo [
	self class: 'mdl-alert__info'
]

{ #category : #options }
MDLAlert >> beSuccess [
	self class: 'mdl-alert__success'
]

{ #category : #options }
MDLAlert >> beWarning [
	self class: 'mdl-alert__warning'
]

{ #category : #initialization }
MDLAlert >> initialize [
	super initialize.
	self class: 'mdl-alert'
]
