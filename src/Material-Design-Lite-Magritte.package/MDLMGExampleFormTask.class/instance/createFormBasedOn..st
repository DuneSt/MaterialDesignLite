private
createFormBasedOn: formChooser
	| theForm |
	theForm := MDLMGExampleFormDescription new asComponent.
	
	formChooser isValidationMessageStyleTop ifTrue: [
		theForm addDecoration: MAValidationDecoration new ].
	
	theForm
		addDecoration: 
			(MDLMAFormDecoration buttons: (Array with: #cancel with: #save) 
				yourself);
		yourself.
	
	theForm magritteDescription twbsInlineValidationMessages: formChooser isValidationMessageStyleInline.
	formChooser isLayoutStyleFormInline ifTrue: [
		theForm magritteDescription twbsFormInline: true.
		"inline styles look better without comments"
		theForm magritteDescription do: [ :aDescription |
			aDescription comment: nil ] ].
	
	^ theForm