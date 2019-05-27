Class {
	#name : #MDLSnackbarTest,
	#superclass : #SGTAbstractBrushTest,
	#category : #'Material-Design-Lite-Components-Tests-Snackbar'
}

{ #category : #tests }
MDLSnackbarTest >> testAction [
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						action: 'console.log(''test'')';
						yourself) ]
		generatedIncludes: 'function(event){console.log(''test'')};'
]

{ #category : #tests }
MDLSnackbarTest >> testActionText [
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						action: 'console.log("test")';
						actionText: 'Button name';
						yourself) ]
		generatedIncludes: 'Button name'
]

{ #category : #tests }
MDLSnackbarTest >> testActionTextNotDisplayedIfNoAction [
	"If there is no action, we should not have a the action name in the result."
	
	self
		deny: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						actionText: 'Button name';
						yourself) ]
		generatedIncludes: 'Button name'
]

{ #category : #tests }
MDLSnackbarTest >> testBareBrush [
	self assert: [ :html | html mdlSnackbar ] generates: '<div class="mdl-js-snackbar mdl-snackbar" id="id1"><div class="mdl-snackbar__text"></div><button class="mdl-snackbar__action" type="submit"></button></div>'
]

{ #category : #tests }
MDLSnackbarTest >> testMessage [
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						message: 'Message for the user';
						yourself) ]
		generatedIncludes: 'Message for the user'
]

{ #category : #tests }
MDLSnackbarTest >> testSnackbarButtonFor [
	self
		assert: [ :html | html mdlSnackbarButtonFor: html mdlSnackbar ]
		generatedIncludesAll:
			#('<div class="mdl-js-snackbar mdl-snackbar" id="id1"><div class="mdl-snackbar__text"></div><button class="mdl-snackbar__action" type="submit"></button></div>' '<button class="mdl-button mdl-js-button"' 'snackbarContainer.MaterialSnackbar.showSnackbar(data)' '</button>')
]

{ #category : #tests }
MDLSnackbarTest >> testTimeout [
	self
		assert: [ :html | 
			html
				mdlSnackbarButtonFor:
					(html mdlSnackbar
						timeout: 14390;
						yourself) ]
		generatedIncludes: '14390'
]

{ #category : #tests }
MDLSnackbarTest >> testWithContent [
	"Not with the snackbars."
]
