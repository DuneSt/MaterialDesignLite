Class {
	#name : #MDLDialogWidgetTests,
	#superclass : #MDLAbstractSeasideTestCase,
	#instVars : [
		'dialog'
	],
	#category : 'Material-Design-Lite-Widgets-Tests-Dialog'
}

{ #category : #running }
MDLDialogWidgetTests >> setUp [
	super setUp.
	dialog := MDLDialogWidget new
]

{ #category : #tests }
MDLDialogWidgetTests >> testActions [
	dialog actions: [ :html | html mdlButton: 'Test' ].
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__actions"><button class="mdl-button mdl-js-button" type="submit">Test</button>'.
	dialog actions: MDLDialogWidgetSimpleWidgetMock new.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__actions">This is a mock'
]

{ #category : #tests }
MDLDialogWidgetTests >> testButtonBrush [
	self
		assert: [ :html | 
			dialog
				buttonBrush:
					(MDLButton new
						colored;
						yourself);
				buttonName: 'Test'.
			html render: dialog ]
		generatedIncludes: '<button class="mdl-button mdl-js-button mdl-button--colored mdl-button--raised mdl-js-ripple-effect" id="id1" type="button">Test</button>'
]

{ #category : #tests }
MDLDialogWidgetTests >> testButtonName [
	dialog buttonName: 'Test'.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="id1" type="button">Test</button>'
]

{ #category : #tests }
MDLDialogWidgetTests >> testCloseButtonName [
	dialog closeButtonName: 'Test'.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<button class="mdl-button mdl-js-button" id="id3" type="button">Test</button>'
]

{ #category : #tests }
MDLDialogWidgetTests >> testContent [
	dialog content: [ :html | html text: 'Test' ].
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__content">Test</div>'.
	dialog content: MDLDialogWidgetSimpleWidgetMock new.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<div class="mdl-dialog__content">This is a mock</div>'
]

{ #category : #tests }
MDLDialogWidgetTests >> testDialogBrush [
	self
		assert: [ :html | 
			dialog
				dialogBrush:
					(MDLDialog new
						class: 'TestClass';
						yourself);
				buttonName: 'Test'.
			html render: dialog ]
		generatedIncludes: '<dialog class="mdl-dialog TestClass"'
]

{ #category : #tests }
MDLDialogWidgetTests >> testDialogIsRegistered [
	self assert: [ :html | html render: dialog ] generatedIncludes: '<script type="text/javascript">newDialog('
]

{ #category : #tests }
MDLDialogWidgetTests >> testRenderBareDialog [
	self assert: [ :html | html render: dialog ] generatedIncludes: '<dialog class="mdl-dialog"'
]

{ #category : #tests }
MDLDialogWidgetTests >> testTitle [
	dialog title: 'Test'.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">Test</h4>'.	
	dialog title: [ :html | html text: 'Test' ].
	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">Test</h4>'.
	dialog title: MDLDialogWidgetSimpleWidgetMock new.
	self assert: [ :html | html render: dialog ] generatedIncludes: '<h4 class="mdl-dialog__title">This is a mock</h4>'
]
