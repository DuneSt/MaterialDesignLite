components
defaultToolbar
	^ MDLVerticalToolbar
		buttons:
			{self defaultFoldButton.
			(self switcherButton: 'Tab1' perform: #setDefaultRightPanel).
			(self switcherButton: 'Tab2' perform: #setTab2RightPanel)}