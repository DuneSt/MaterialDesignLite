"
Component to display some feedback to the user.
"
Class {
	#name : #MDLAlertsScreen,
	#superclass : #MDLExtensionsDemo,
	#category : #'Material-Design-Lite-Demo-Extensions'
}

{ #category : #accessing }
MDLAlertsScreen class >> icon [
	^ 'compAlertsPng'
]

{ #category : #accessing }
MDLAlertsScreen class >> title [
	^ 'Alerts'
]

{ #category : #accessing }
MDLAlertsScreen >> basicAlerts [
	^ #('Default' 'Info')
		inject: OrderedDictionary new
		into: [ :res :each | 
			res add: (each , ' alert') -> ('render' , each , 'AlertOn:') asSymbol.
			res ]
]

{ #category : #accessing }
MDLAlertsScreen >> levelAlerts [
	^ #('Danger' 'Warning' 'Success')
		inject: OrderedDictionary new
		into: [ :res :each | 
			res add: (each , ' alert') -> ('render' , each , 'AlertOn:') asSymbol.
			res ]
]

{ #category : #rendering }
MDLAlertsScreen >> renderDangerAlertOn: html [
	html mdlAlert
		beDanger;
		with: [
			html strong: 'This is a test message.'.
			html space.
			html text: 'This is the rest of the message that should not be strong.'.
			html anchor
				callback: [ "Do nothing" ];
				with: 'This is an anchor' ]
]

{ #category : #rendering }
MDLAlertsScreen >> renderDefaultAlertOn: html [
	html mdlAlert
		beDefault;
		with: [
			html strong: 'This is a test message.'.
			html space.
			html text: 'This is the rest of the message that should not be strong.'.
			html anchor
				callback: [ "Do nothing" ];
				with: 'This is an anchor' ]
]

{ #category : #rendering }
MDLAlertsScreen >> renderInfoAlertOn: html [
	html mdlAlert
		beInfo;
		with: [ 
			html strong: 'This is a test message.'.
			html space.
			html text: 'This is the rest of the message that should not be strong.'.
			html anchor
				callback: [ "Do nothing" ];
				with: 'This is an anchor' ]
]

{ #category : #rendering }
MDLAlertsScreen >> renderScreenContentOn: html [
	self
		render: self basicAlerts on: html;
		render: self levelAlerts on: html
]

{ #category : #rendering }
MDLAlertsScreen >> renderSuccessAlertOn: html [
	html mdlAlert
		beSuccess;
		with: [
			html strong: 'This is a test message.'.
			html space.
			html text: 'This is the rest of the message that should not be strong.'.
			html anchor
				callback: [ "Do nothing" ];
				with: 'This is an anchor' ]
]

{ #category : #rendering }
MDLAlertsScreen >> renderWarningAlertOn: html [
	html mdlAlert
		beWarning;
		with: [
			html strong: 'This is a test message.'.
			html space.
			html text: 'This is the rest of the message that should not be strong.'.
			html anchor
				callback: [ "Do nothing" ];
				with: 'This is an anchor' ]
]
