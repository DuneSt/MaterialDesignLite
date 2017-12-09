*Material-Design-Lite-Extensions
onClickUpdateRootDialogWith: aBlock
	self
		onClick:
			((canvas jQuery id: SYNComponent rootDialogId) load
				html: aBlock;
				onComplete: MDLDialog jsInitializeRootDialog)