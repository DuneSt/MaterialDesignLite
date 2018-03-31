components
switcherButton: text id: anId tooltip: tooltip perform: method onCompleteHook: aString
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