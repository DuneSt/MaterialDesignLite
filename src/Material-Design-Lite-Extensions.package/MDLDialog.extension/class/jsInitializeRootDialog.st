*Material-Design-Lite-Extensions
jsInitializeRootDialog
	^ ('newDialog("' , self rootDialogId , '");setVerticalPositionOf($("#' , self rootDialogId , '"));componentHandler.upgradeDom()') js