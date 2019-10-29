Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Design-Lite-Extensions' }
WAHtmlCanvas >> leftPanel [
	^ self aside
		class: #'material-design-left-panel';
		shadow: 2;
		yourself
]

{ #category : #'*Material-Design-Lite-Extensions' }
WAHtmlCanvas >> leftPanelResizer [
	self render: MDLLeftPanelResizer new
]

{ #category : #'*Material-Design-Lite-Extensions' }
WAHtmlCanvas >> mdlAlert [
	^ self brush: MDLAlert new
]

{ #category : #'*Material-Design-Lite-Extensions' }
WAHtmlCanvas >> mdlAlert: aBlock [
	^ self mdlAlert
		with: aBlock;
		yourself
]
