Class {
	#name : #MDLAlertTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Extensions-Tests-Alerts'
}

{ #category : #tests }
MDLAlertTest >> testBareBrush [
	self assert: [ :html | html mdlAlert ] generates: '<div class="mdl-alert"></div>'
]

{ #category : #tests }
MDLAlertTest >> testBeDanger [
	self
		assert: [ :html | 
			html mdlAlert
				beDanger;
				with: 'Test' ]
		generates: '<div class="mdl-alert mdl-alert__danger">Test</div>'
]

{ #category : #tests }
MDLAlertTest >> testBeDefault [
	self
		assert: [ :html | 
			html mdlAlert
				beDefault;
				with: 'Test' ]
		generates: '<div class="mdl-alert mdl-alert__default">Test</div>'
]

{ #category : #tests }
MDLAlertTest >> testBeInfo [
	self
		assert: [ :html | 
			html mdlAlert
				beInfo;
				with: 'Test' ]
		generates: '<div class="mdl-alert mdl-alert__info">Test</div>'
]

{ #category : #tests }
MDLAlertTest >> testBeSuccess [
	self
		assert: [ :html | 
			html mdlAlert
				beSuccess;
				with: 'Test' ]
		generates: '<div class="mdl-alert mdl-alert__success">Test</div>'
]

{ #category : #tests }
MDLAlertTest >> testBeWarning [
	self
		assert: [ :html | 
			html mdlAlert
				beWarning;
				with: 'Test' ]
		generates: '<div class="mdl-alert mdl-alert__warning">Test</div>'
]

{ #category : #tests }
MDLAlertTest >> testWithContent [
	self assert: [ :html | html mdlAlert: 'Test' ] generates: '<div class="mdl-alert">Test</div>'
]
