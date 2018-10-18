"
Description
--------------------

I am a trait to help to create a browser with a panel to the right and a toolbar to manage the panel content.

To use it you need to:
- Make your component use the TRightTabsPanelBrowser trait.
- Implement the #browserClass method. It should return a symbol to use to prefix html classes.
- Implement #defaultToolbar method.  It should return a MDLVerticalToolbar with the different panels to display in the toolbar.
- Implement the instance variables, getter and setters for the toolbar and right panel components.
- Implement the #setDefaultRightPanel method. It should be used to select the default right panel.
- Call #initialijeRightPanel from the initialize method of the component.
- Call #renderRightPanelOn: during the rendering phase of the component.
"
Trait {
	#name : #TRightTabsPanelBrowser,
	#category : 'Material-Design-Lite-Extensions-Panels'
}

{ #category : #accessing }
TRightTabsPanelBrowser >> browserClass [
	"I should return an html class specific to the browser to prefix generated ids and classes for the HTML."

	^ self explicitRequirement
]

{ #category : #components }
TRightTabsPanelBrowser >> defaultToolbar [
	^ self explicitRequirement
]

{ #category : #initialization }
TRightTabsPanelBrowser >> initializeRightPanel [
	self setDefaultRightPanel.
	self toolbar: self defaultToolbar
]

{ #category : #rendering }
TRightTabsPanelBrowser >> renderRightPanelOn: html [
	html render: self toolbar.
	html div
		id: self rightPanelId;
		class: #'right-panel';
		class: #toFold;
		shadow: 2;
		with: [ html render: MDLRightPanelResizer new.
			html render: self rightPanel ]
]

{ #category : #accessing }
TRightTabsPanelBrowser >> rightPanel [
	^ self explicitRequirement
]

{ #category : #accessing }
TRightTabsPanelBrowser >> rightPanel: aComponent [
	self explicitRequirement
]

{ #category : #accessing }
TRightTabsPanelBrowser >> rightPanelId [
	"I should return the id of the right panel of the browser."

	^ self browserClass , '-right-panel'
]

{ #category : #components }
TRightTabsPanelBrowser >> setDefaultRightPanel [
	self explicitRequirement
]

{ #category : #components }
TRightTabsPanelBrowser >> switcherButton: text id: anId tooltip: tooltip perform: method onCompleteHook: aString [
	^ (MDLPanelSwitcherButton
		text: text
		tooltip: tooltip
		panelId: self rightPanelId
		actionBlock: [ :r | 
			self perform: method.
			r render: MDLRightPanelResizer new.
			r render: self rightPanel ]
		onComplete: ('var button = $(this.parentNode).find(".fold-button"); if(button.attr("data-fold") == "true"){button.click()};componentHandler.upgradeDom();' , aString) js
		id: anId)
		isSelected: method = #setDefaultRightPanel;
		yourself
]

{ #category : #components }
TRightTabsPanelBrowser >> switcherButton: text perform: method [
	^ self switcherButton: text tooltip: nil perform: method
]

{ #category : #components }
TRightTabsPanelBrowser >> switcherButton: text tooltip: tooltip perform: method [
	^ self
		switcherButton: text
		tooltip: tooltip
		perform: method
		onCompleteHook: ''
]

{ #category : #components }
TRightTabsPanelBrowser >> switcherButton: text tooltip: tooltip perform: method onCompleteHook: aString [
	^ self
		switcherButton: text
		id: nil
		tooltip: tooltip
		perform: method
		onCompleteHook: aString
]

{ #category : #accessing }
TRightTabsPanelBrowser >> toolbar [
	^ self explicitRequirement
]

{ #category : #accessing }
TRightTabsPanelBrowser >> toolbar: aComponent [
	self explicitRequirement
]
