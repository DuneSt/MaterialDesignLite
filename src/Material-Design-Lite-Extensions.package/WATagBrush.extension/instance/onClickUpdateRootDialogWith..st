*Material-Design-Lite-Extensions
onClickUpdateRootDialogWith: aBlock
	self
		onClick:
			((canvas jQuery id: MDLDialog rootDialogId) load
				html: aBlock;
				onComplete: MDLDialog jsInitializeRootDialog)