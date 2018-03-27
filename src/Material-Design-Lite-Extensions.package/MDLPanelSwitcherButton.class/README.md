I am a button use to change the content of a panel.

Description
-------------------

Sometimes we show contents inside a panel but we want to change. This button is here to do that. 

I was designed at the beginning for the code analyzer but can evolve.

I should probably be use inside a MDLVerticalToolbar. 

Example
--------------------

	MDLPanelSwitcherButton
		text: 'Tags'
		tooltip: 'Show the Tag panel'
		panelId: #'code-analyzer-right-panel'
		actionBlock: [ :r | 
			self setTagPanel.
			self renderRightPanelOn: r ]
		onComplete: 'var button = $(".fold-button"); if(button.attr("data-fold") == "true"){button.click()}'
 
Internal Representation and Key Implementation Points.
--------------------

    Instance Variables
	actionBlock:			<aBlock>	I am a block taking a canvas as parameter. I should draw the content on the panel on this canvas.
	onCompleteJs:		<aString>	I am an optional script to add after the redraw is done.
	panelId:				<aSymbol>	I am the dom id of the panel to redraw.
	text:				<aString>	I am the text to display on the button.
	tooltip:				<aString>	I am an optional tooltip.