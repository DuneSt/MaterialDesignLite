rendering
renderContentOn: aRenderer
	super renderContentOn: aRenderer.
	aRenderer mdlTable
		with: [ 
			self renderHeaderOn: aRenderer.
			self renderRowsOn: aRenderer ]