Extension { #name : #WAHtmlCanvas }

{ #category : #'*Material-Design-Lite-Extensions' }
WAHtmlCanvas >> leftPanel [
	"A left panel for Synectique's tools."

	^ self aside
		class: #'material-design-left-panel';
		shadow: 2;
		yourself
]

{ #category : #'*Material-Design-Lite-Extensions' }
WAHtmlCanvas >> leftPanelResizer [
	self render: MDLLeftPanelResizer new
]
