*Material-Design-Lite-Components
mdlChipImage: aBlock
	self deprecated: 'Chip image should not have a content but an URL instead. Remove it in the next majore version.'.
	^ self mdlChipImage
		with: aBlock;
		yourself